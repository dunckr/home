_ = require 'underscore'
Backbone = require 'backbone'
Backbone.$ = require 'jquery'
Marionette = require "backbone.marionette"
Channel = require "../services/channel"
CommentItemView = require "./comment"
Comments = require "../collections/comments"

class CommentsView extends Marionette.CollectionView
  childView: CommentItemView
  modelEvents:
    "change": "render"

  initialize: ->
    @render()
    @channel = Channel
    @channel.on "item:clicked", (item) =>
      comments = new Comments(item.get("kids"))
      @collection.reset(comments.models)

module.exports = CommentsView
