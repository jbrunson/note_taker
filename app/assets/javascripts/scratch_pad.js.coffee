window.ScratchPad =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    @AllNotes = [
      new @Models.Note(id: 1, title: "the first note", content: "I am a note")
      new @Models.Note(id: 2, title: "the second note", content: "")
      new @Models.Note(id: 3, title: "the third note", content: "more notes")
    ]
    new @Routers.ScratchPadRouter
    Backbone.history.start(pushState: true)

window.App = window.ScratchPad

$(document).ready ->
  ScratchPad.initialize()
