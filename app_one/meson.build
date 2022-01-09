# Run with `meson build --prefix=/usr`, cd build, ninja

# Define project name, languages
project('com.github.isaac-list.app', 'vala', 'c')

# Define executables
executable(
    # Pulled from line 2
    meson.project_name(),

    # List the files in the directory
    'main.vala',
    'window.vala',
    'application.vala',

    # Define dependencies
    dependencies: [
        dependency('gtk+-3.0')
    ],

    # Define whether app can be installed
    install: true
)