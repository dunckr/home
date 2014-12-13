_ = require 'underscore'
Backbone = require 'backbone'
Backbone.$ = require 'jquery'
Model = require "../models/post"

class Posts extends Backbone.Collection
  model: Model
  url: "https://hacker-news.firebaseio.com/v0/topstories.json",

  sync: (method, collection, options) ->
    options.dataType = "jsonp"
    Backbone.sync method, collection, options

module.exports = Posts
