_          = require 'underscore'
Backbone   = require 'backbone'
Backbone.$ = require 'jquery'

View = Backbone.View.extend

  template: require '../templates/template'

  initialize: ->
    underscoreTest = _.last([0,1,2, 'hi mom!'])
    @render()

  render: ->
    @$el.html @template
      description: 'Starter Gulp + Browserify project equipped to handle the following:'
      tools: [
        'Browserify-shim'
        'Browserify / Watchify'
        'BrowserSync'
        'CoffeeScript'
        'Compass'
        'SASS'
        'Handlebars'
        'Image optimization'
        'LiveReload'
        'Non common-js jquery plugin'
        'Npm backbone'
        'Npm jquery'
        'Underscore (included with Backbone)'
      ]
module.exports = View
