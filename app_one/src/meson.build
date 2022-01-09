# Define executables
executable(
    # Pulled from line 2
    meson.project_name(),

    # List the files in the directory
    'main.vala',
    'application.vala',
    'widgets/window.vala',

    # Define dependencies
    dependencies: [
        dependency('gtk+-3.0')
    ],

    # Define whether app can be installed
    install: true
)
