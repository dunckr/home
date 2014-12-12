ItemsView =  require "../views/items"
Collection =  require "../collections/items"
HeaderView =  require "../views/header"
PanelView =  require "../views/panel"
FooterView =  require "../views/footer"

ViewInitializer = ->

  collection = new Collection()
  new ItemsView(collection: collection)

  new HeaderView()
  new PanelView()
  new FooterView()

module.exports = ViewInitializer
