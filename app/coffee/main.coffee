$ = require "$"
_ = require "_"
Backbone = require "Backbone"
Marionette = require "Marionette"
ViewInitializer = require "./initializers/example"

options =
  test: "12"
app = new Marionette.Application()
app.addInitializer(ViewInitializer)
app.start(config: options)
