module Todo
  class ItemListBoxRow < Gtk::ListBoxRow
    type_register

    class << self
      def init
        set_template(
          resource: '/com/martink-i-o/gtk-todo-app/todo_item_list_box_row.ui'
        )
      end
    end

    def initialize(item)
      super()
    end
  end
end
