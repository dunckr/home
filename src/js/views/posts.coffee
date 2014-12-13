_ = require 'underscore'
Backbone = require 'backbone'
Backbone.$ = require 'jquery'
Marionette = require "backbone.marionette"
PostItemView = require "./post"

class Posts extends Marionette.CollectionView
  childView: PostItemView

  initialize: ->
    @collection.fetch({}, @success, @error)
    @render()

  success: (collection) =>
    @render()

  error: (collection, response) ->

module.exports = Posts
