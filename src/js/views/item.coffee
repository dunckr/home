_ = require 'underscore'
Backbone = require 'backbone'
Backbone.$ = require 'jquery'
Marionette = require "backbone.marionette"
Template = require "../templates/item"

class Item extends Marionette.ItemView
  template: Template
  tagName: "li"
  className: "ui-li-has-thumb"
  modelEvents:
    "change": "render"

module.exports = Item
