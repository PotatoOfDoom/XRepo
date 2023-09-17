package("streamline")
    set_description("Streamline Integration Framework")
    set_license("MIT")

    if is_plat("windows") then
        set_urls("https://github.com/PotatoOfDoom/Streamline/archive/refs/tags/$(version).zip")
        add_versions("2.2.0", "fd7503d4465d248c3f270a95fc0c270ee61b3bbef2ba0089de102e1580ffceba")
    end

    on_install("windows", function (package)
        os.cp("include", package:installdir())
        os.cp("lib/$(arch)/*.lib", package:installdir("lib"))
        os.cp("bin/$(arch)/*.dll", package:installdir("lib"))
    end)

    on_test(function (package)
        - TODO check includes and interfaces
        - assert(package:has_cfuncs("slInit", {includes = "sl.h"})
    end)