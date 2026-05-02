const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    _ = b.addModule("tree_sitter_zig", .{
        .root_source_file = b.path("bindings/zig/root.zig"),
        .target = target,
        .optimize = optimize,
    });
}
