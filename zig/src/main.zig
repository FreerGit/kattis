const std = @import("std");
const assert = std.debug.assert;
const os = std.os.linux;
const mem = std.mem;

pub const VirtualArena = struct {
    base: []align(std.mem.page_size) u8,
    offset: usize,
    capacity: usize,

    const Self = @This();

    // This is the `Allocator` interface
    const vtable = std.mem.Allocator.VTable{
        .alloc = _alloc,
        .resize = resize,
        .free = free,
    };

    /// Note that the capacity you set is reserved memory _not_ committed memory.
    ///
    /// This means that the OS will commit pages as you need it.
    ///
    /// Essentially creating a growing arena by default and for "free"
    pub fn init(capacity: usize) !Self {
        const aligned_capacity = mem.alignForward(usize, capacity, std.mem.page_size);
        const base = try std.posix.mmap(
            null,
            aligned_capacity,
            os.PROT.READ | os.PROT.WRITE,
            .{ .TYPE = .PRIVATE, .ANONYMOUS = true },
            -1,
            0,
        );

        return VirtualArena{
            .base = base,
            .offset = 0,
            .capacity = aligned_capacity,
        };
    }

    pub fn allocator(self: *Self) std.mem.Allocator {
        return .{
            .ptr = self,
            .vtable = &vtable,
        };
    }

    pub fn pos(self: *Self) usize {
        return self.offset;
    }

    pub fn alloc(self: *Self, comptime T: type, n: usize) ![]T {
        return try self.allocator().alloc(T, n);
    }

    /// * This will simply return a pointer instead of slice.
    /// * Note that the memory will be zeroed out by defualt.
    /// * ZII enjoyers rise up.
    pub fn allocPtrZero(self: *Self, comptime T: type) !*T {
        const slice: []T = try self.allocator().alloc(T, 1);
        slice.ptr[0] = std.mem.zeroes(T);
        return &slice.ptr[0];
    }

    pub fn allocAlign(self: *Self, comptime T: type, n: usize) ![]T {
        return try self.allocator().alignedAlloc(T, @alignOf(T), n);
    }

    pub fn deinit(self: *Self) void {
        std.posix.munmap(self.base);
    }

    pub fn reset(self: *Self) void {
        self.offset = 0;
    }

    // Interface fn's
    fn _alloc(ctx: *anyopaque, len: usize, ptr_align: u8, ret_addr: usize) ?[*]u8 {
        _ = ret_addr;

        const self: *Self = @ptrCast(@alignCast(ctx));
        const alignment = @max(ptr_align, @alignOf(usize));
        const aligned_offset = mem.alignForward(usize, self.offset, alignment);
        const new_offset = aligned_offset + len;

        if (new_offset > self.capacity) {
            return null;
        }

        const result = self.base.ptr + aligned_offset;
        self.offset = new_offset;
        return result;
    }

    fn resize(ctx: *anyopaque, buf: []u8, buf_align: u8, new_len: usize, ret_addr: usize) bool {
        _ = buf_align;
        _ = ret_addr;
        const self = @as(*Self, @ptrCast(@alignCast(ctx)));
        if (@intFromPtr(buf.ptr) + new_len > @intFromPtr(self.base.ptr) + self.offset) {
            return false;
        }
        return new_len <= buf.len;
    }

    // No-op: Arena doesn't free individual allocations
    fn free(_: *anyopaque, _: []u8, _: u8, _: usize) void {}
};

pub const Scratch = struct {
    arena: *VirtualArena,
    offset: usize,

    pub fn begin(arena: *VirtualArena) Scratch {
        return .{ .arena = arena, .offset = arena.pos() };
    }

    pub fn end(self: Scratch) void {
        // popTo function, just "call" reset on the sub-arena
        assert(self.offset <= self.arena.offset);
        self.arena.offset = self.offset;
    }
};

pub fn main() !void {
    // var arena = try VirtualArena.init(1024 * 1024 * 8);
    // const input = try arena.alloc(u8, 1000000);
    // const input2 = try arena.alloc(u8, 1000000);
    const allo = std.heap.page_allocator;
    const stdin = std.io.getStdIn().reader();
    const stdout = std.io.getStdOut().writer();
    const w = try stdin.readUntilDelimiterAlloc(allo, '\n', 1024 * 1024);
    const g = try stdin.readUntilDelimiterAlloc(allo, '\n', 1024 * 1024);

    var acc: u32 = 0;
    for (0..w.len) |i| {
        if (w[i] != g[i]) {
            acc += 1;
        }
    }

    try stdout.print("{}\n", .{acc + 1});
}
