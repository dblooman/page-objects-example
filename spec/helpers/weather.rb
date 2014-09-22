class Weather < SitePrism::Page
  extend Helpers

  set_url config['weatherpage']

  element :forecast, '.forecast-daily__temperature'
end
