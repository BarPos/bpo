project "bpo"
    kind "ConsoleApp"
    language "c++"
    staticruntime "off"

    targetdir ("%{wks.location}/build/" .. outputdir .. "/%{prj.name}")
    debugdir ("%{wks.location}/build/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/build/tmp/" .. outputdir .. "/%{prj.name}")

    files{
        "src/**.cpp"
    }

    includedirs{
        "src"
    }

    links{

    }

    defines{

    }