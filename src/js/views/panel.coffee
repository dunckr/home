_ = require 'underscore'
Backbone = require 'backbone'
Backbone.$ = require 'jquery'
Marionette = require "backbone.marionette"
Channel = require "../services/channel"
Template = require "../templates/panel"

class Panel extends Marionette.ItemView
  el: "#panel"
  template: Template
  ui:
    comments: "#comments"
  events:
    "click": "toggleOverlay"

  initialize: ->
    @render()

  toggleOverlay: =>
    @$el.toggleClass("overlay")

module.exports = Panel
