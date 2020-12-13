module Todo
  class NewItemWindow < Gtk::Window
    # Register the class in the GLib world
    type_register

    class << self
      def init
        # Set the template from the resources binary
        set_template(resource: '/com/martink-i-o/gtk-todo-app/ui/new_item_window.ui')

        # Bind the window's widgets
        bind_template_child 'id_value_label'
        bind_template_child 'title_text_entry'
        bind_template_child 'notes_text_view'
        bind_template_child 'priority_combo_box'
        bind_template_child 'cancel_button'
        bind_template_child 'save_button'
      end
    end

    def initialize(application)
      super(application: application)
    end
  end
end
