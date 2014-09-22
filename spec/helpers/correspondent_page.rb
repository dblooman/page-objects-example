class CorrespondentPage < SitePrism::Page
  extend Helpers

  set_url config['correspondentpage']

  element :twitter_module, '.component--correspondent-twitter'
  element :related_correspondents, '.related-correspondent'
  element :information, '.basic-information'
  element :blog_stories, '.blog__story'
  element :share_button, '.ctm .share__button--lightweight'
end
