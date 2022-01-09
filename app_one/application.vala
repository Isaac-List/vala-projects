/**
 * This class defines the application and creates it using the window class
 */

 public class Application : Gtk.Application {
    public Application() {
        // Define app name and flags
        Object (
            application_id: "com.github.isaac-list.app",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate() {
        var window = new MyApp.Window(this);
        add_window(window);
    }
}