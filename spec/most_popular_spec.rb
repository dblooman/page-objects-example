require 'spec_helper'

describe 'most read/popular component' do
  it 'exists on story page', on: config['mostreadstatus'] do

    @story_page = StoryPage.new
    @story_page.load
    expect(@story_page).to have_most_read_component
  end

  it 'exists on genre index', on: config['mostpopstatus'] do

    @genre_index = GenreIndex.new
    @genre_index.load
    expect(@genre_index).to have_most_popular_item
  end
end
