require 'spec_helper'

describe 'video' do
  it 'has player is on page', on: config['videostatus'] do

    @video_page = AVPage.new
    @video_page.load
    @video_page.wait_for_video_player
    expect(@video_page).to have_video_player
  end
end
