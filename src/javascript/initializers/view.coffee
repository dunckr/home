View =  require "../views/view"

ViewInitializer = ->

  new View(el: "#content")
  console.log 'app.js loaded!'

module.exports = ViewInitializer
