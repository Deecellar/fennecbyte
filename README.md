# fennecbyte: A demoscene framework for zig
## Composition
fennecbyte is composed of a few different parts:
- `fennecbyte`: The main library, which provides the core functionality of the framework.
- `fex`: A library for working with fennecbyte executables, which is used by `fennecbyte` to generate small executables.
- `utils`: A collection of utilities for working with fennecbyte. (fmt, data generation, etc.)
- `examples`: A collection of examples for working with fennecbyte.
- `eyes`: A library for working with Vulkan and Opengl, which is used by `fennecbyte` to render graphics.
- `windowing`: A library for working with windowing systems, which is used by `fennecbyte` to create windows.
- `synth`: A library for generating audio, which is used by `fennecbyte` to generate audio.
- `squeal`: A library for outputting audio, which is used by `fennecbyte` to output audio.
- `fox`: A library for making generative textures and meshes
- `ffs`: Embeeded Data using @embedFile? a virtual file system for binary data
- `toolbox`: A collection of tools for working with fennecbyte. (shader compiler, model converter, etc.)
- `guy`: A library for making GUIs, which is used by `fennecbyte` all the tools are using it.


The whole framework is built on top of [zig](https://ziglang.org/), and is designed to be as simple as possible to use.
ideally everything should be relativily compatible with the zig standard library, and should be easy to use.

## Dependencies (runtime if using one of the tools)
- [Vulkan](https://www.khronos.org/vulkan/)
- [x11](https://www.x.org/wiki/)
- [wayland](https://wayland.freedesktop.org/)
- [pulseaudio](https://www.freedesktop.org/wiki/Software/PulseAudio/)
- [alsa](https://www.alsa-project.org/wiki/Main_Page)
- [wasapi](https://docs.microsoft.com/en-us/windows/win32/coreaudio/wasapi)
- [directsound](https://docs.microsoft.com/en-us/windows/win32/coreaudio/directsound)
- [opengl](https://www.opengl.org/)

## Build Dependencies
- [zig](https://ziglang.org/)


## Building
To build the framework, you will need to have zig master installed.
Download the source code, and run the following commands:
```sh
zig build -Doptimize=ReleaseSafe
```
This will build the framework C bindings in case you need them.

## Examples
The examples are located in the `examples` directory.
To build them, you will need to have the framework built with the `examples` flag enabled.
```sh
zig build -Doptimize=ReleaseSafe -Dexamples
```

## Tools
The tools are located in the `tools` directory.
To build them, you will need to have the framework built with the `tools` flag enabled.
```sh
zig build -Doptimize=ReleaseSafe -Dtools
```

## Documentation
The documentation is located in the `docs` directory.
To build it, you will need to have the framework built with the `docs` flag enabled.
```sh
zig build -Ddocs
```

## Contributing
read the [CONTRIBUTING.md](CONTRIBUTING.md) file for more information.

## License
This project is licensed under the MIT license.
See the `LICENSE` file for more information.