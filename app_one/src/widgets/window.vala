/**
 * This class defines the application window within the MyApp namespace
 */

public class MyApp.Window : Gtk.ApplicationWindow {
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
        
        show_all();
    }
}