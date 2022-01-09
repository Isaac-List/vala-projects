# Run with `meson build --prefix=/usr`, cd build, ninja

# Define project name, languages
project('com.github.isaac-list.app', 'vala', 'c')

# Define where project lives
subdir('src')
subdir('data')

# Post-install script
meson.add_install_script('meson/post_install.py')