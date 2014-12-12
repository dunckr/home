_ = require 'underscore'
Backbone = require 'backbone'
Backbone.$ = require 'jquery'
Marionette = require "backbone.marionette"
ViewInitializer = require "./initializers/view"

config = {}
App = new Marionette.Application()
App.addInitializer(ViewInitializer)
App.start(config: config)
