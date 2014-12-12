_ = require 'underscore'
Backbone = require 'backbone'
Backbone.$ = require 'jquery'
Marionette = require "backbone.marionette"
ListItemView = require "./item"

class Items extends Marionette.CollectionView
  el: "#items"
  childView: ListItemView

  initialize: ->
    @collection.fetch({}, @success, @error)
    @render()

  success: (collection) =>
    @render()

  error: (collection, response) ->

module.exports = Items
