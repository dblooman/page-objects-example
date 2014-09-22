require 'spec_helper'

describe 'related links' do
  it 'exist on story page', on: config['relatedlinks'] do
    @links = StoryPage.new
    @links.load
    expect(@links).to have_related_links
  end
end
