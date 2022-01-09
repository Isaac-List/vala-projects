/**
 * An Object-Oriented "Hello World!" in Vala using GTK libraries.
 * Built following Alessandro Castellani's YouTube tutorial.
 */

public class Greet : Gtk.Application {
    // public constructor, shares name of class
    // triggered only the first time the class is initialized
    public Greet() {
        // Define app name and flags
        Object (
            // Name convention: reversed git url with app name
            application_id: "com.github.isaac-list.greet",

            // App flags (command line args), leave off "GLib."
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    // automatically triggered
    protected override void activate() {
        build_window();
    }

    private void build_window() {
        // Initialize a GTK window class, pass this object itself
        var window = new Gtk.ApplicationWindow(this);

        // Define window attributes
        window.set_title("Hello Vala");
        window.border_width = 10;
        window.window_position = Gtk.WindowPosition.CENTER;
        window.set_default_size(350, 80);

        // Don't need, Gtk.Application handles destruction
        // window.destroy.connect(Gtk.main_quit);

        // Display window
        window.show_all();
    }

    public static int main(string[] args) {
        // Instantiate a new "Greet" application
        var test = new Greet();

        // Run method defined in Gtk.Application
        return test.run(args);
    }
}