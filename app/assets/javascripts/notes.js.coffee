class App.Views.Notes extends Backbone.View
  template: JST['notes/index'] 

  events: 
    'click a': 'showNote'

  render: ->
    @$el.html(@template(notes: @collection)) #notes in template
    this

  showNote: (e) ->
    $this = $(e.currentTarget) #element that was clicked on
    url = $this.attr("href")  
    Backbone.history.navigate(url, trigger: true) #make async  -doesnt trigger routing by default
    false  #prevent default