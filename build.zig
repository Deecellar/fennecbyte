const std = @import("std");

// Although this function looks imperative, note that its job is to
// declaratively construct a build graph that will be executed by an external
// runner.
pub fn build(b: *std.Build) void {
    // Standard target options allows the person running `zig build` to choose
    // what target to build for. Here we do not override the defaults, which
    // means any target is allowed, and the default is native. Other options
    // for restricting supported target set are available.
    const target = b.standardTargetOptions(.{});

    // Standard optimization options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall. Here we do not
    // set a preferred release mode, allowing the user to decide how to optimize.
    const optimize = b.standardOptimizeOption(.{});

    // We first see what options the user want (-Ddocs -Dexamples -Dbenchmarks and -Dtools)
    const options: FennecByteOptions = .{
        .docs = b.option(bool, "docs", "Build the documentation (default: false)") orelse false,
        .examples = b.option(bool, "examples", "Build the examples (default: false)") orelse false,
        .benchmarks = b.option(bool, "benchmarks", "Build the benchmarks (default: false)") orelse false,
        .tools = b.option(bool, "tools", "Build the tools (default: false)") orelse false,
    };

    // We need to get all dependencies, the only we should have is winzig32
    const win32 = b.dependency("zigwin32", .{});
    const win32_mod = win32.module("zigwin32");
    const vulkan = b.dependency("vulkan_zig", .{});

    // Generated, local opengl bindings
    const gl_version = b.option(GlVersion, "opengl_version", "Select the opengl version to use (default: gl_4v6)") orelse .gl_4v6;
    var gl_file_buffer: [@tagName(GlVersion.gl_es_3v2).len + 4]u8 = undefined;
    const gl_file_name_len = @tagName(gl_version).len;

    @memcpy(gl_file_buffer[0..][0..gl_file_name_len], @tagName(gl_version));
    @memcpy(gl_file_buffer[gl_file_name_len .. gl_file_name_len + 4], ".zig");
    const gl_file = gl_file_buffer[0 .. gl_file_name_len + 4];

    // We now create the opengl module and the vulkan module

    const gl_mod = b.createModule(.{
        .source_file = .{ .path = b.pathFromRoot(b.pathJoin(&.{ "opengl", gl_file })) },
    });

    // We get the vulkan generator artifact here
    const vk_gen = vulkan.artifact("generator");

    // We generate the vk.zig file here using the generator
    const generate_command = b.addRunArtifact(vk_gen);
    generate_command.addFileArg(.{ .path = "vk.xml" });

    // ZLS cannot resolve the path of the generated file, so we install it on the root of the cache

    const install_vk_for_zls = b.addInstallFile(generate_command.addOutputFileArg("vk.zig"), "../zig-cache/vk.zig");

    install_vk_for_zls.step.dependOn(&generate_command.step);

    const vulkan_mod = b.createModule(.{
        .source_file = .{ .path = "zig-cache/vk.zig" },
    });

    // We have the following structs with all the libraries and tools paths relative to the root of the project
    const libs = AllLibraries{};
    const tools = AllTools{};
    const examples = AllExamples{};
    const benchmarks = AllBenchmarks{};

    // We now create the modules for all the libraries in the project
    const utils_mod = b.addModule(libs.utils.name, std.build.CreateModuleOptions{
        .source_file = .{ .path = libs.utils.src_dir },
        .dependencies = &.{},
    });

    const fex_mod = b.addModule(libs.fex.name, std.build.CreateModuleOptions{
        .source_file = .{ .path = libs.fex.src_dir },
        .dependencies = &.{std.build.ModuleDependency{ .name = libs.utils.name, .module = utils_mod }},
    });

    const ffs_mod = b.addModule(libs.ffs.name, std.build.CreateModuleOptions{
        .source_file = .{ .path = libs.ffs.src_dir },
        .dependencies = &.{std.build.ModuleDependency{ .name = libs.utils.name, .module = utils_mod }},
    });

    const fox_mod = b.addModule(libs.fox.name, std.build.CreateModuleOptions{
        .source_file = .{ .path = libs.fox.src_dir },
        .dependencies = &.{std.build.ModuleDependency{ .name = libs.utils.name, .module = utils_mod }},
    });

    const guy_mod = b.addModule(libs.guy.name, std.build.CreateModuleOptions{
        .source_file = .{ .path = libs.guy.src_dir },
        .dependencies = &.{std.build.ModuleDependency{ .name = libs.utils.name, .module = utils_mod }},
    });

    const synth_mod = b.addModule(libs.synth.name, std.build.CreateModuleOptions{
        .source_file = .{ .path = libs.synth.src_dir },
        .dependencies = &.{std.build.ModuleDependency{ .name = libs.utils.name, .module = utils_mod }},
    });

    const squeal_mod = b.addModule(libs.squeal.name, std.build.CreateModuleOptions{
        .source_file = .{ .path = libs.squeal.src_dir },
        .dependencies = &.{ std.build.ModuleDependency{ .name = libs.utils.name, .module = utils_mod }, std.build.ModuleDependency{ .name = "win32", .module = win32_mod } },
    });

    const eyes_mod = b.addModule(libs.eyes.name, std.build.CreateModuleOptions{ .source_file = .{ .path = libs.eyes.src_dir }, .dependencies = &.{
        std.build.ModuleDependency{ .name = libs.utils.name, .module = utils_mod },
        std.build.ModuleDependency{ .name = "gl", .module = gl_mod },
        std.build.ModuleDependency{ .name = "vulkan", .module = vulkan_mod },
    } });

    const windowing_mod = b.addModule(libs.windowing.name, std.build.CreateModuleOptions{
        .source_file = .{ .path = libs.windowing.src_dir },
        .dependencies = &.{ std.build.ModuleDependency{ .name = libs.utils.name, .module = utils_mod }, std.build.ModuleDependency{ .name = "win32", .module = win32_mod } },
    });

    const core_mod = b.addModule(libs.core.name, std.build.CreateModuleOptions{
        .source_file = .{ .path = libs.core.src_dir },
        .dependencies = &.{
            std.build.ModuleDependency{ .name = libs.utils.name, .module = utils_mod },
            std.build.ModuleDependency{ .name = libs.fex.name, .module = fex_mod },
            std.build.ModuleDependency{ .name = libs.ffs.name, .module = ffs_mod },
            std.build.ModuleDependency{ .name = libs.fox.name, .module = fox_mod },
            std.build.ModuleDependency{ .name = libs.guy.name, .module = guy_mod },
            std.build.ModuleDependency{ .name = libs.synth.name, .module = synth_mod },
            std.build.ModuleDependency{ .name = libs.squeal.name, .module = squeal_mod },
            std.build.ModuleDependency{ .name = libs.eyes.name, .module = eyes_mod },
            std.build.ModuleDependency{ .name = libs.windowing.name, .module = windowing_mod },
        },
    });
    var tools_array = std.BoundedArray(*std.build.CompileStep, @typeInfo(AllTools).Struct.fields.len){};
    var examples_array = std.BoundedArray(*std.build.CompileStep, @typeInfo(AllExamples).Struct.fields.len){};
    var benchmarks_array = std.BoundedArray(*std.build.CompileStep, @typeInfo(AllBenchmarks).Struct.fields.len){};
    var libs_array = std.BoundedArray(*std.build.CompileStep, 2){}; // Static and shared libraries

    // The library of the core module
    const core_step = b.step("core", "Installs Core");

    const core_static_lib = b.addStaticLibrary(std.build.StaticLibraryOptions{
        .name = "fennecbyte",
        .target = target,
        .root_source_file = .{ .path = libs.core.src_dir },
        .version = std.SemanticVersion.parse(framework_version) catch @panic("Invalid version"),
        .optimize = optimize,
    });

    const core_shared_lib = b.addSharedLibrary(std.build.SharedLibraryOptions{
        .name = "fennecbyte",
        .target = target,
        .root_source_file = .{ .path = libs.core.src_dir },
        .version = std.SemanticVersion.parse(framework_version) catch @panic("Invalid version"),
        .optimize = optimize,
    });

    libs_array.appendAssumeCapacity(core_static_lib);
    libs_array.appendAssumeCapacity(core_shared_lib);

    const install_static_core_lib = b.addInstallArtifact(core_static_lib, .{});
    const install_shared_core_lib = b.addInstallArtifact(core_shared_lib, .{});

    core_step.dependOn(&install_static_core_lib.step);
    core_step.dependOn(&install_shared_core_lib.step);

    b.getInstallStep().dependOn(core_step);

    // We now create all the executables for the project
    // First we start for the tools
    const tool_step = b.step("tools", "Installs Tools");

    inline for (@typeInfo(AllTools).Struct.fields) |field| {
        const tool = @field(tools, field.name);
        const tool_exe = b.addExecutable(std.build.ExecutableOptions{
            .name = tool.name,
            .target = target,
            .root_source_file = .{ .path = tool.src_dir },
            .version = std.SemanticVersion.parse(framework_version) catch @panic("Invalid version"),
            .optimize = optimize,
        });
        tool_exe.addModule(libs.core.name, core_mod);
        tools_array.appendAssumeCapacity(tool_exe);
        const install_tool = b.addInstallArtifact(tool_exe, .{});
        tool_step.dependOn(&install_tool.step);
    }
    if (options.tools) {
        b.getInstallStep().dependOn(tool_step);
    }

    // Now we create the examples
    const example_step = b.step("examples", "Installs Examples");

    inline for (@typeInfo(AllExamples).Struct.fields) |field| {
        const example = @field(examples, field.name);
        const example_exe = b.addExecutable(std.build.ExecutableOptions{
            .name = example.name,
            .target = target,
            .root_source_file = .{ .path = example.src_dir },
            .version = std.SemanticVersion.parse(framework_version) catch @panic("Invalid version"),
            .optimize = optimize,
        });
        example_exe.addModule(libs.core.name, core_mod);
        examples_array.appendAssumeCapacity(example_exe);
        const install_example = b.addInstallArtifact(example_exe, .{});
        example_step.dependOn(&install_example.step);
    }
    if (options.examples) {
        b.getInstallStep().dependOn(example_step);
    }

    // Now we create the benchmarks
    const benchmark_step = b.step("benchmarks", "Installs Benchmarks");
    inline for (@typeInfo(AllBenchmarks).Struct.fields) |field| {
        const benchmark = @field(benchmarks, field.name);
        const benchmark_exe = b.addExecutable(std.build.ExecutableOptions{
            .name = benchmark.name,
            .target = target,
            .root_source_file = .{ .path = benchmark.src_dir },
            .version = std.SemanticVersion.parse(framework_version) catch @panic("Invalid version"),
            .optimize = optimize,
        });
        benchmark_exe.addModule(libs.core.name, core_mod);
        benchmarks_array.appendAssumeCapacity(benchmark_exe);
        const install_benchmark = b.addInstallArtifact(benchmark_exe, .{});
        benchmark_step.dependOn(&install_benchmark.step);
    }
    if (options.benchmarks) {
        b.getInstallStep().dependOn(benchmark_step);
    }

    // Before installing anything we need make sure that the vulkan bindings are generated
    // This means before any other step in the build we need to generate the bindings

    for (libs_array.slice()) |lib| {
        lib.step.dependOn(&install_vk_for_zls.step);
    }

    for (tools_array.slice()) |tool| {
        tool.step.dependOn(&install_vk_for_zls.step);
    }

    for (examples_array.slice()) |example| {
        example.step.dependOn(&install_vk_for_zls.step);
    }

    for (benchmarks_array.slice()) |benchmark| {
        benchmark.step.dependOn(&install_vk_for_zls.step);
    }

    // If the user wants to build the documentation we do it here
    if (options.docs) {
        const doc_step = b.step("docs", "Generate Documentation"); // This is just a container step, it does nothing and never available
        for (libs_array.slice()[0..1]) |lib| {
            const doc = lib.getEmittedDocs();
            const install_doc = b.addInstallDirectory(.{
                .source_dir = doc,
                .install_dir = .prefix,
                .install_subdir = b.pathJoin(&.{ "docs", lib.name }),
            });
            doc_step.dependOn(&install_doc.step);
        }

        for (tools_array.slice()) |tool| {
            const doc = tool.getEmittedDocs();
            const install_doc = b.addInstallDirectory(.{
                .source_dir = doc,
                .install_dir = .prefix,
                .install_subdir = b.pathJoin(&.{ "docs", tool.name }),
            });
            doc_step.dependOn(&install_doc.step);
        }

        for (examples_array.slice()) |example| {
            const doc = example.getEmittedDocs();
            const install_doc = b.addInstallDirectory(.{
                .source_dir = doc,
                .install_dir = .prefix,
                .install_subdir = b.pathJoin(&.{ "docs", example.name }),
            });
            doc_step.dependOn(&install_doc.step);
        }

        for (benchmarks_array.slice()) |benchmark| {
            const doc = benchmark.getEmittedDocs();
            const install_doc = b.addInstallDirectory(.{
                .source_dir = doc,
                .install_dir = .prefix,
                .install_subdir = b.pathJoin(&.{ "docs", benchmark.name }),
            });
            doc_step.dependOn(&install_doc.step);
        }

        doc_step.dependOn(core_step);
        doc_step.dependOn(tool_step);
        doc_step.dependOn(example_step);
        doc_step.dependOn(benchmark_step);

        // We create a file with all the links to the documentation using relative paths
        // It's a md which basically is a list of links to the documentations generated for gh-pages
        const fennecbyte_doc = "# FennecByte\n Description: A demoscene framework for zig \n [Documentation](./fennecbyte)\n";
        const calculate_max_memory = mem: {
            var max_memory: usize = 0;
            const extra_data = "# \n\n\n [Documentation](./) Description: ";
            inline for (@typeInfo(AllTools).Struct.fields) |field| {
                const tool = @field(tools, field.name);
                const description = tool.description;
                if (description) |desc| {
                    max_memory += desc.len;
                }
                max_memory += tool.name.len;
            }
            inline for (@typeInfo(AllExamples).Struct.fields) |field| {
                const example = @field(examples, field.name);
                const description = example.description;
                if (description) |desc| {
                    max_memory += desc.len;
                }
                max_memory += example.name.len;
            }
            inline for (@typeInfo(AllBenchmarks).Struct.fields) |field| {
                const benchmark = @field(benchmarks, field.name);
                const description = benchmark.description;
                if (description) |desc| {
                    max_memory += desc.len;
                }
                max_memory += benchmark.name.len;
            }
            max_memory += extra_data.len * 3;
            max_memory += fennecbyte_doc.len;
            break :mem max_memory;
        };
        // We write per each library a link to the documentation
        // The format is the following
        // # Library Name
        // Description: <description>
        // [Documentation](<link to the documentation>)
        // We do this for all the libraries and tools
        var data = std.ArrayList(u8).initCapacity(b.allocator, calculate_max_memory) catch @panic("Failed to allocate memory");
        data.appendSliceAssumeCapacity(fennecbyte_doc);
        inline for (@typeInfo(AllTools).Struct.fields) |field| {
            const tool = @field(tools, field.name);
            data.writer().print("# {s}", .{tool.name}) catch unreachable;
            data.writer().print("\n Description: {?s}\n", .{tool.description}) catch unreachable;
            data.writer().print("[Documentation](./{s})\n", .{tool.name}) catch unreachable;
        }

        inline for (@typeInfo(AllExamples).Struct.fields) |field| {
            const example = @field(examples, field.name);
            data.writer().print("# {s}", .{example.name}) catch unreachable;
            data.writer().print("\n Description: {?s}\n", .{example.description}) catch unreachable;
            data.writer().print("[Documentation](./{s})\n", .{example.name}) catch unreachable;
        }

        inline for (@typeInfo(AllBenchmarks).Struct.fields) |field| {
            const benchmark = @field(benchmarks, field.name);
            data.writer().print("# {s}", .{benchmark.name}) catch unreachable;
            data.writer().print("\n Description: {?s}\n", .{benchmark.description}) catch unreachable;
            data.writer().print("[Documentation](./{s})\n", .{benchmark.name}) catch unreachable;
        }

        const doc_file = b.addWriteFile(b.pathJoin(&.{ b.install_prefix, "docs", "index.md" }), data.items);
        doc_step.dependOn(&doc_file.step);
        b.getInstallStep().dependOn(doc_step);
    }

    const remove_docs = b.addRemoveDirTree(b.pathJoin(&.{ b.install_prefix, "docs" }));
    b.getUninstallStep().dependOn(&remove_docs.step);

    // Every Lib and Tool will be tested here
    const test_step = b.step("test", "Test Libraries and Tools");
    inline for (@typeInfo(AllLibraries).Struct.fields) |field| {
        const lib = @field(libs, field.name);
        const lib_test = b.addTest(std.build.TestOptions{
            .name = lib.name,
            .target = target,
            .root_source_file = .{ .path = lib.src_dir },
            .version = std.SemanticVersion.parse(framework_version) catch @panic("Invalid version"),
            .optimize = optimize,
        });
        test_step.dependOn(&lib_test.step);
    }
    inline for (@typeInfo(AllTools).Struct.fields) |field| {
        const tool = @field(tools, field.name);
        const tool_test = b.addTest(std.build.TestOptions{
            .name = tool.name,
            .target = target,
            .root_source_file = .{ .path = tool.src_dir },
            .version = std.SemanticVersion.parse(framework_version) catch @panic("Invalid version"),
            .optimize = optimize,
        });
        test_step.dependOn(&tool_test.step);
    }
}

const FennecByteOptions = struct {
    docs: bool = false,
    examples: bool = false,
    benchmarks: bool = false,
    tools: bool = false,
};

const FennecByteStartCode = struct {
    name: []const u8,
    src_dir: []const u8,
    description: ?[]const u8 = null,
};
const AllLibraries = struct {
    core: FennecByteStartCode = .{
        .name = "core",
        .src_dir = "src/main.zig",
    },
    eyes: FennecByteStartCode = .{
        .name = "eyes",
        .src_dir = "src/eyes/renderer.zig",
    },
    squeal: FennecByteStartCode = .{
        .name = "squeal",
        .src_dir = "src/squeal/squeal.zig",
    },
    synth: FennecByteStartCode = .{
        .name = "synth",
        .src_dir = "src/synth/synth.zig",
    },
    guy: FennecByteStartCode = .{
        .name = "guy",
        .src_dir = "src/guy/guy.zig",
    },
    fox: FennecByteStartCode = .{
        .name = "fox",
        .src_dir = "src/fox/fox.zig",
    },
    ffs: FennecByteStartCode = .{
        .name = "ffs",
        .src_dir = "src/ffs/fs.zig",
    },
    fex: FennecByteStartCode = .{
        .name = "fex",
        .src_dir = "src/fex/fex.zig",
    },
    utils: FennecByteStartCode = .{
        .name = "utils",
        .src_dir = "src/utils/utils.zig",
    },
    windowing: FennecByteStartCode = .{
        .name = "windowing",
        .src_dir = "src/windowing/windowing.zig",
    },
};

const AllTools = struct {
    composer: FennecByteStartCode = .{
        .name = "composer",
        .src_dir = "src/toolbox/composer.zig",
        .description = "A tool to compose music for the synth library",
    },
    executable_compressor: FennecByteStartCode = .{
        .name = "executable_compressor",
        .src_dir = "src/toolbox/executable_compressor.zig",
        .description = "A tool to compress executables into it's minimum size",
    },
    level_editor: FennecByteStartCode = .{
        .name = "level_editor",
        .src_dir = "src/toolbox/level_editor.zig",
        .description = "A tool to create levels generated for the fox library",
    },
    mesh_editor: FennecByteStartCode = .{
        .name = "mesh_editor",
        .src_dir = "src/toolbox/mesh_editor.zig",
        .description = "A tool to create meshes for the fox library",
    },
    shader_reduce: FennecByteStartCode = .{
        .name = "shader_reduce",
        .src_dir = "src/toolbox/shader_reduce.zig",
        .description = "A tool to reduce the size of shaders",
    },
};

const AllExamples = struct {
    yump: FennecByteStartCode = .{
        .name = "yump",
        .src_dir = "examples/yump.zig",
        .description = "A simple demostration on all the features in fenecbyte",
    },
};

const AllBenchmarks = struct {
    bench: FennecByteStartCode = .{
        .name = "bench",
        .src_dir = "benchmarks/bench.zig",
        .description = "Default benchmark for fennecbyte",
    },
};

const framework_version = "0.0.1";

// Opengl Version to use

const GlVersion = enum {
    gl_1v1,
    gl_1v2,
    gl_1v3,
    gl_1v4,
    gl_1v5,
    gl_2v0,
    gl_2v1,
    gl_3v0,
    gl_3v1,
    gl_3v2,
    gl_3v3,
    gl_4v0,
    gl_4v2,
    gl_4v3,
    gl_4v5,
    gl_4v6,
    gl_es_1v0,
    gl_es_2v0,
    gl_es_3v0,
    gl_es_3v1,
    gl_es_3v2,
};
