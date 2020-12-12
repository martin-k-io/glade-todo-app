module ToDo
  class Application < Gtk::Application
    def initialize
      super('com.martink-i-o.gtk-todo-app', :flags_none)

      signal_connect :activate do |application|
        window = Gtk::ApplicationWindow.new(application)
        window.set_title 'Hello GTK+Ruby!'
        window.present
      end
    end
  end
end
