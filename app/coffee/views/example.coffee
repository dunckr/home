Backbone = require "backbone"
Marionette = require "marionette"
Template = require "../templates/example.html"

class Example extends Marionette.ItemView
  el: "#app"
  template: Template
  ui:
    title: "h1"

  initialize: ->
    #@model = new Backbone.Model(@options.config.get("translations"))
    #@channel = @options.config.get("channel")
    #@resources = @options.config.get("resources")
    #@channel.on "resource:switch", (resourceName) =>
      #@setResultsType resourceName
    #$(@ui.collapsible).on "collapsibleexpand collapsiblecollapse", =>
      #@channel.trigger "accordion:changed"
    #if Environment.instance().isDesktop()
      #@channel.on "window:resize accordion:changed stationList:rendered", =>
        #@resultsResize()

  #setResultsType: (resourceName) ->
    #@ui.title.text @resources[resourceName]

  #onRender: ->
    #@$el.trigger("create")

  #resultsResize: ->
    #@ui.accordion.css "top", @ui.results.height()
    #@ui.results.find ".results-wrapper"
      #.css "height", @ui.results.height() - 50

module.exports = View
