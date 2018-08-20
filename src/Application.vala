public class MyApp : Gtk.Application { 
    public MyApp() {
        Object (
            application_id: "com.github.ondb.valapps-nb",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }
    protected override void activate () {
        var button_hello = new Gtk.Button.with_label ("Click me!");
        button_hello.margin = 12;
        button_hello.clicked.connect (() => {
            button_hello.label = "Hello World!";
            button_hello.sensitive = false;
        });
        var main_window = new Gtk.ApplicationWindow (this);
        main_window.default_height = 360;
        main_window.default_width  = 480;
        main_window.title          = "Nailed";
        main_window.add (button_hello);
        main_window.show_all ();
    }
    public static int main (string[] args) {
        var app = new MyApp ();
        return app.run (args);
    }
}