_ = require 'underscore'
Backbone = require 'backbone'
Backbone.$ = require 'jquery'
Marionette = require "backbone.marionette"
ListItemView = require "./item"

class Items extends Marionette.CollectionView
  el: Backbone.$("#items")
  childView: ListItemView

  initialize: ->
    @collection.fetch({}, @success, @error)
    @render()

  success: (collection) =>
    @render()
    console.log "we were successful", collection

  error: (collection, response) ->
    console.log "we were successful", response

module.exports = Items
