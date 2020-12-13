module Todo
  class ApplicationWindow < Gtk::ApplicationWindow
    # Register the class in the GLib world
    type_register

    class << self
      def init
        # Set the template from the resources binary
        set_template(
          resource: '/com/martink-i-o/gtk-todo-app/ui/application_window.ui'
        )

        bind_template_child('add_new_item_button')
        bind_template_child('todo_items_list_box')
      end
    end

    def initialize(application)
      super application: application

      set_title 'GTK+ Simple ToDo with Glade UI'

      add_new_item_button.signal_connect('clicked') do |button|
        new_item_window = NewItemWindow.new(
          application,
          Todo::Item.new(user_data_path: application.user_data_path)
        )
        new_item_window.present
      end

      load_todo_items
    end

    def load_todo_items
      # Clear all children initially in order to show up-to-date notes
      todo_items_list_box.children.each do |child|
        todo_items_list_box.remove child
      end

      json_files = Dir[File.join(File.expand_path(application.user_data_path), '*.json')]

      # Create new Todo::Item for each existing file
      items = json_files.map do |filename|
        Todo::Item.new(filename: filename)
      end

      # Add all items to the Todo::ItemListBox via Todo::ItemListBoxRow
      items.each do |item|
        todo_items_list_box.add(Todo::ItemListBoxRow.new(item))
      end
    end
  end
end
