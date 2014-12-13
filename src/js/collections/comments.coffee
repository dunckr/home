_ = require 'underscore'
Backbone = require 'backbone'
Backbone.$ = require 'jquery'
Model = require "../models/item"

class Comments extends Backbone.Collection
  model: Model

  initialize: (options) ->
    @processArray(options)

  processArray: (options) ->
    if _.isArray(options)
      _.each options, (id) =>
        @add(new @model(id))

module.exports = Comments
