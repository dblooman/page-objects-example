class StoryPage < SitePrism::Page
  extend Helpers

  set_url config['storypage']

  element :more_stories_component, '.small-promo-group'
  element :share_tools, '.share__tools'
  element :most_read_component, '.most-popular'
  element :related_links, 'div[class="group related-links--external more-on-this-story"]'
end
