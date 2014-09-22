class Scotland < SitePrism::Page
  extend Helpers

  set_url config['scotlanddecides']
  element :topical_stories, 'div#topical-stories'
  element :poll_widget, 'div[id="scotland_decides_poll_tracker-widget.inc"]'
  element :election_banner, '.election-live-banner'
  element :issue_explorer, '.scot-ref-issue-explorer'
end
