require 'spec_helper'

describe 'Top Stories' do
  it 'exists on index', on: config['topstatus'] do

    @home_page = HomePage.new
    @home_page.load
    expect(@home_page).to have_top_stories
  end
end
