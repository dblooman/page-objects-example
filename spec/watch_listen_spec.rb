require 'spec_helper'

describe 'watch/listen' do
  it 'should be on tech index', on: config['watchlisten'] do

    @genre_index = GenreIndex.new
    @genre_index.load
    @genre_index.wait_for_watch_listen_component
    expect(@genre_index).to have_watch_listen_component
  end
end
