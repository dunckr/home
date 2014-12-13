_ = require 'underscore'
Backbone = require 'backbone'
Backbone.$ = require 'jquery'
Marionette = require "backbone.marionette"
Channel = require "../services/channel"
Template = require "../templates/post"

class Post extends Marionette.ItemView
  template: Template
  tagName: "li"
  className: "list-group-item"
  modelEvents:
    "change": "render"
  events:
    "click": "clicked"

  initialize: ->
    @channel = Channel

  clicked: =>
    @channel.trigger "item:clicked", @model

module.exports = Post
