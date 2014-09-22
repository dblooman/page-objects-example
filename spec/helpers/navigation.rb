class Navigation < SitePrism::Page
  extend Helpers

  set_url config['navpage']

  def index_title
    config['indexname']
  end

  def open_nav
    if ENV['WIDTH'].to_i < 400
      find('.navigation__section').click
    else
      find('button[data-panel-id="js-navigation-panel-primary"]').click
    end
  end

  def nav_status
    if ENV['WIDTH'].to_i < 400
      find('.navigation-arrow--open')
    else
      find('.js-navigation-panel-primary')
    end
  end

  def has_nav_on_page?
    if ENV['WIDTH'].to_i < 400
      find('a[class="navigation__section navigation__section--enhanced"]')
    else
      find('div[class="navigation navigation--wide"]')
    end
  end
end
