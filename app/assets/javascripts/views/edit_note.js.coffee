class App.Views.EditNote extends Backbone.View
  template: JST['notes/edit']

  tagName: 'form' #tells bb we want a form instead of a div

  events:
    'submit': 'saveModel'

  render: ->
    @$el.html(@template(note: @model))
    this

  saveModel: (e) ->
    @model.save
      title: @$('.note-title').val()
      content: @$('.note-content').val()
    Backbone.history.navigate('/', trigger: true)
    false