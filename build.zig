const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const dvui_dep = b.dependency("dvui", .{ .target = target, .optimize = optimize, .backend = .wio });
    _ = dvui_dep;
    const wio_dep = b.dependency("wio", .{ .target = target, .optimize = optimize });
    _ = wio_dep;
}
