_ = require 'underscore'
Backbone = require 'backbone'
Backbone.$ = require 'jquery'
Model = require "../models/item"

Items = Backbone.Collection.extend

  model: Model
  url: "https://hacker-news.firebaseio.com/v0/topstories.json",

  sync: (method, collection, options) ->
    options.dataType = "jsonp"
    Backbone.sync method, collection, options

  parse: (response) ->
    response[..4]
    #response

module.exports = Items
