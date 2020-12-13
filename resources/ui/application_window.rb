module Todo
  class ApplicationWindow < Gtk::ApplicationWindow
    # Register the class in the GLib world
    type_register

    class << self
      def init
        # Set the template from the resources binary
        set_template resource: '/com/martink-i-o/gtk-todo-app/ui/application_window.ui'

        bind_template_child 'add_new_item_button'
      end
    end

    def initialize(application)
      super application: application

      set_title 'GTK+ Simple ToDo with Glade UI'

      add_new_item_button.signal_connect('clicked') do |button, application|
        new_item_window = NewItemWIndow.new(application)
        new_item_window.present
      end
    end
  end
end
