class AVPage < SitePrism::Page
  extend Helpers

  set_url config['videopage']

  element :video_player, '#media-asset-page-video'
end
