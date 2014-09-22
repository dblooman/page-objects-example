require 'spec_helper'

describe 'Share tools' do
  it 'exists on story page', on: config['sharestory'] do

    @story_page = StoryPage.new
    @story_page.load
    expect(@story_page).to have_share_tools
  end

  it 'exists on correspondent index', on: config['sharecorrindex'] do

    @corr_index = CorrespondentPage.new
    @corr_index.load
    expect(@corr_index).to have_share_button
  end
end
