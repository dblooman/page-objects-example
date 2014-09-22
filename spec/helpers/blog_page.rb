class BlogPage < SitePrism::Page
  extend Helpers

  set_url config['blogindex']

  element :blog_stories, '.blog__story'
  element :follow_us, '.follow-us'
end
