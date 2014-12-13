_ = require 'underscore'
Backbone = require 'backbone'
Backbone.$ = require 'jquery'
Marionette = require "backbone.marionette"
ViewInitializer = require "./initializers/view"

App = new Marionette.Application()
App.addInitializer(ViewInitializer)
App.start()
