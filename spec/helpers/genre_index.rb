class GenreIndex < SitePrism::Page
  extend Helpers

  set_url config['genreindex']

  element :most_popular_item, '.most-popular-by-day__list-item-link'
  element :watch_listen_component, '.small-promo-group .small-image-promo'
end
