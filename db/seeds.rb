Note.destroy_all

Note.create([
  {
    title: "A simple note",
    body: StickyNote.new(content: "Dont forget to make a todo list")
  },
  {
    title: "A more complex todo list",
    body: TodoList.new(
      todo_items: [
        TodoItem.new(title: "Make a second todo item", complete: true),
        TodoItem.new(title: "make another todo list", complete: false),
        TodoItem.new(title: "another one!!!!!!", complete: false)
      ]
    )
  }
])
