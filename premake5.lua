workspace "BPO"
    architecture "x64"
    startproject "bpo"

    configurations{
        "Debug",
        "Release"
    }

    flags{
        "MultiProcessorCompile"
    }

-- #
-- # 
-- #

    filter "system:windows"
        cppdialect "C++20"
        systemversion "latest"

        defines{
            "_WINDOWS"
        }

    filter "system:linux"
        cppdialect "C++20"
        systemversion "latest"

        defines{
            "_LINUX"
        }
        buildoptions{
            "-lpthread"
        }

    filter ""

-- #
-- # 
-- #

    filter "configurations:Debug"
        defines "_DEBUG"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        defines "_RELEASE"
        runtime "Release"
        optimize "on"

    filter ""

-- #
-- # 
-- #

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

IncludeDir = {}

-- #
-- # 
-- #

group "Dependencies"
	-- include "CaravanEngine/vendor/GLFW"
group ""

include "bpo"