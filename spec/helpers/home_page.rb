class HomePage < SitePrism::Page
  extend Helpers

  set_url config['homepage']

  element :top_stories, '.hard-news-unit'
  element :local_button, '.find-local-wide'

  def on_wide
    ENV['WIDTH'].to_i > 400
  end
end
