-- premake5.lua


include "dependencies/conandeps.premake5.lua"

workspace "CppPremakeScripts"
   configurations { "Debug", "Release" }
   architecture "x64"

project "TestScript"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++20"

    targetdir    "build/%{cfg.buildcfg}/bin" -- output for .exe files
    objdir       "build/%{cfg.buildcfg}/obj" -- objdir intermediate file for object files


    location "./src"
    files { "%{prj.location}/**.h", "%{prj.location}/**.cpp" }

    filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"
    filter {} -- Resetting Premake filters

    filter "configurations:Release" -- This convention could lead to isuses with properties.
      defines { "NDEBUG" }
      optimize "On"
    filter {} -- Resetting Premake filters

    conan_setup() -- hardcode with input parameter to get libs
    linkoptions { "/IGNORE:4099", "/IGNORE:4996" }