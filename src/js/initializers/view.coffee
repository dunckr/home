PostsView =  require "../views/posts"
Posts =  require "../collections/posts"
HeaderView =  require "../views/header"
PanelView =  require "../views/panel"
ContentView =  require "../views/content"
FooterView =  require "../views/footer"
Comments = require "../collections/comments"
CommentsView =  require "../views/comments"

ViewInitializer = ->

  posts = new Posts()
  new PostsView(el: "#items", collection: posts)

  new PanelView()
  comments = new Comments()
  new CommentsView(el: "#comments", collection: comments)

  new HeaderView()
  new ContentView()
  new FooterView()

module.exports = ViewInitializer
