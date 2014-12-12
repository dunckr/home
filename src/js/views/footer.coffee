_ = require 'underscore'
Backbone = require 'backbone'
Backbone.$ = require 'jquery'
Marionette = require "backbone.marionette"
Template = require "../templates/footer"

class Footer extends Marionette.ItemView
  el: "#footer"
  template: Template

  initialize: ->
    @render()

module.exports = Footer
