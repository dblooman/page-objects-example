require 'spec_helper'

describe 'more stories group' do
  it 'exists on page', on: config['morestoriesstatus'] do

    @story_page = StoryPage.new
    @story_page.load
    expect(@story_page).to have_more_stories_component
  end
end
