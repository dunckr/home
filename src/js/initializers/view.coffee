PostsView =  require "../views/posts"
Posts =  require "../collections/posts"
HeaderView =  require "../views/header"
PanelView =  require "../views/panel"
ContentView =  require "../views/content"
FooterView =  require "../views/footer"
Comments = require "../collections/comments"
CommentsView =  require "../views/comments"

ViewInitializer = ->
  new HeaderView()
  new PanelView()
  new ContentView()
  new FooterView()

  posts = new Posts()
  new PostsView(el: "#items", collection: posts)

  comments = new Comments()
  new CommentsView(el: "#comments", collection: comments)

module.exports = ViewInitializer
