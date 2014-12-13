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
      #console.log "we have new comments", comments
      #comment = comments.at(0)
      #console.log comment
      #@collection.add(comment)
      #@render()
      console.log comments.models
      @collection.reset(comments.models)
      #
  onRender: ->
    console.log "re-rendered the comments view"

module.exports = CommentsView
