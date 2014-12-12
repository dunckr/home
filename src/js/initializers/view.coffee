ItemsView =  require "../views/items"
Collection =  require "../collections/items"
HeaderView =  require "../views/header"
PanelView =  require "../views/panel"
ContentView =  require "../views/content"
FooterView =  require "../views/footer"

ViewInitializer = ->

  collection = new Collection()
  new ItemsView(collection: collection)

  new HeaderView()
  new PanelView()
  new ContentView()
  new FooterView()

module.exports = ViewInitializer
