# frozen_string_literal: true

module Todo
  # The main Application class:
  #
  # Connects the signal to activate event
  # and creates the application window
  class Application < Gtk::Application
    attr_reader :user_data_path

    def initialize
      super('com.martink-i-o.gtk-todo-app', Gio::ApplicationFlags::FLAGS_NONE)

      signal_connect :activate do |application|
        window = Todo::ApplicationWindow.new(application)
        window.present
      end
    end
  end
end
