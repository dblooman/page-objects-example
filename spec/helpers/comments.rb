class Comments < SitePrism::Page
  extend Helpers

  set_url config['commentsurl']
  element :comments_button, '.comments-button'
end
