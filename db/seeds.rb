Note.destroy_all

Note.create(title: "the first note", body: StickyNote.new(content: "I am a note"))
Note.create(title: "the second note", body: StickyNote.new(content: ""))
Note.create(title: "the third note", body: StickyNote.new(content: "more notes"))
