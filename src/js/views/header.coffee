_ = require 'underscore'
Backbone = require 'backbone'
Backbone.$ = require 'jquery'
Marionette = require "backbone.marionette"
Template = require "../templates/header"

class Header extends Marionette.ItemView
  el: "#header"
  template: Template

  initialize: ->
    @render()

module.exports = Header
