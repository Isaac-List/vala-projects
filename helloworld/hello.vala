/**
 * First Vala Project, following Alessandro Castellani's Tutorial
 */

/**
 * Entry method: return value must be an int (0 == success), and it
 * must capture any command line arguments as an array of strings (args)
 */
int main(string[] args) {
    // Initialize as GTK app
    Gtk.init(ref args);
    
    // Initialize a GTK window class, include typehint
    Gtk.Window window = new Gtk.Window();

    // Define window attributes
    window.title = "Hello Vala!";
    window.set_title("Hello Vala"); // alternative
    window.border_width = 10;
    window.window_position = Gtk.WindowPosition.CENTER;
    window.set_default_size(350, 80);

    // Connect destroy to close action
    window.destroy.connect(Gtk.main_quit);

    // Display window
    window.show_all();

    // Call the main method
    Gtk.main();

    // Return success int
    return 0;
}
