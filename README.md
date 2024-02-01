# Package Manager

- Conan C/C++ Package Manager http://conan.io
```
$ pip install conan
```
- Will help us create a project with the use of external libraries. However it is not a build system, so you will need to use one like premake or cmake.
- Supplies prebuilt binaries.
- If you cant find binaries from Conan Center.
```
conan install . --build misisng --output-folder=./dependencies
```
        

# Build System
- Premake, Cmake

# Libraries
- fmt/10.2.1
A safe and fast alternative to printf and IOStreams.
#format #iostream #printf
- spdlog/1.13.0
Fast C++ logging library
#file #sinkheader-only #log-filtering #logger #logging



## TOOLS
- Visual Studio
    - SLN FILES: Shared solution that Visual Studio integrated development environment uses to organize projects. It serves as a container for the state of one or more projects. An SLN file contains text-encoded data used to locate and load the name-value parameters and VSPackages for a C#, C++, or .NET application. T