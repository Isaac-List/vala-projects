/**
 * This class defines the application window within the MyApp namespace
 */

public class MyApp.Window : Gtk.ApplicationWindow {
    // Create settings as an attribute of the class
    public GLib.Settings settings;

    public Window(Application app) {
        Object(
            application: app
        );
    }

    construct {
        // Don't need "window." because these are methods on this class
        set_title("Hello Vala");
        window_position = Gtk.WindowPosition.CENTER;
        set_default_size(350, 80);

        // Utilize stored gsettings
        settings = new GLib.Settings("com.github.isaac-list.app");
        move(settings.get_int("pos-x"), settings.get_int("pos-y"));
        resize(settings.get_int("window-width"), settings.get_int("window-height"));

        // Utilize signals to store settings
        delete_event.connect(e => {
            // True == destroy, False == not destroy
            return before_destroy();
        });
        
        show_all();
    }

    // Save settings
    public bool before_destroy() {
        // Retrieve values
        int width, height, x, y;
        get_size(out width, out height);
        get_position(out x, out y);

        settings.set_int("pos-x", x);
        settings.set_int("pos-y", y);
        settings.set_int("window-width", width);
        settings.set_int("window-height", height);

        return false;
    }
}