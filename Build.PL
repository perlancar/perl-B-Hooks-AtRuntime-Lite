use Module::Build;

Module::Build->new(
    module_name         => "B::Hooks::AtRuntime::Lite",
    license             => "bsd",

    include_dirs        => ".",

    configure_requires  => {
        "Module::Build"     => "0.38",
    },
    build_requires      => {
        "Test::More"        => "1.001002",
        "Test::Exception"   => "0.31",
        "Test::Warn"        => "0.22",
        "Test::Exports"     => "1",
    },
    requires            => {
        perl                => "5.012000",
        #"strict"            => 0,
        #"warnings"          => 0,
        "Exporter"          => 5.57,
        "XSLoader"          => 0,
    },

    meta_merge          => {
        resources => {
            repository => "http://github.com/perlancar/perl-B-Hooks-AtRuntime-Lite",
            bugtracker => "https://rt.cpan.org/Public/Dist/" .
                "Display.html?Name=B-Hooks-AtRuntime-Lite",
        },
    },
)->create_build_script;
