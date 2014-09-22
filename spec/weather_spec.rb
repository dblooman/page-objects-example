require 'spec_helper'

describe 'Weather on local page' do
  it 'has the weather module', on: config['weatherlocal'] do

    @weather = Weather.new
    @weather.load
    @weather.wait_for_forecast
    expect(@weather).to have_forecast
  end
end
