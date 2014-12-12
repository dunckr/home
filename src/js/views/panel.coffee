_ = require 'underscore'
Backbone = require 'backbone'
Backbone.$ = require 'jquery'
Marionette = require "backbone.marionette"
Template = require "../templates/panel"

class Panel extends Marionette.ItemView
  el: "#panel"
  template: Template

  initialize: ->
    @render()

module.exports = Panel
