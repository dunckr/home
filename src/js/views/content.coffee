_ = require 'underscore'
Backbone = require 'backbone'
Backbone.$ = $ = require 'jquery'
Marionette = require "backbone.marionette"
Channel = require "../services/channel"
Template = require "../templates/content"

class Content extends Marionette.ItemView
  el: "#content"
  template: Template
  ui:
    iframe: "iframe"

  initialize: ->
    @render()
    @channel = Channel
    @channel.on "item:clicked", (item) =>
      @setFrame(item.get("url"))

  setFrame: (url) ->
    @ui.iframe.attr("src", url)

module.exports = Content
