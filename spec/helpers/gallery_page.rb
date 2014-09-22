class GalleryPage < SitePrism::Page
  extend Helpers

  set_url config['galpage']

  element :gallery_image, '.gallery-enhanced-on.gallery .story-inner figure.photo img'
end
