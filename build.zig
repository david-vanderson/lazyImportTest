const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const wio_dep = b.dependency("wio", .{ .target = target, .optimize = optimize });
    _ = wio_dep;

    inline for (0..100) |_| {
        if (b.lazyImport(@This(), "wio")) |_| {}
    }
}
