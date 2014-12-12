_ = require 'underscore'
Backbone = require 'backbone'
Backbone.$ = require 'jquery'
Marionette = require "backbone.marionette"
Channel = require "../services/channel"
Template = require "../templates/panel"

class Panel extends Marionette.ItemView
  el: "#panel"
  template: Template

  initialize: ->
    @render()
    @channel = Channel
    @channel.on "item:clicked", (item) =>

module.exports = Panel
