_ = require 'underscore'
Backbone = require 'backbone'
Backbone.$ = require 'jquery'

class Comment extends Backbone.Model

  initialize: (@id) ->
    @fetch()

  url: ->
    "https://hacker-news.firebaseio.com/v0/item/#{@id}.json"

  sync: (method, model, options) ->
    options.dataType = "jsonp"
    Backbone.sync method, model, options

module.exports = Comment
