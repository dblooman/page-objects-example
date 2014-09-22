require 'spec_helper'

describe 'correspondent_page page' do
  before(:each) do
    @correspondent_page = CorrespondentPage.new
    @correspondent_page.load
  end

  it 'has twitter module', on: config['twitterstatus'] do
    @correspondent_page.wait_for_twitter_module
    expect(@correspondent_page).to have_twitter_module
  end

  it 'has related correspondent_pages', on: config['relatedcorres'] do
    expect(@correspondent_page).to have_related_correspondents
  end

  it 'has bios information', on: config['bioinformation'] do
    expect(@correspondent_page).to have_information
  end

  it 'has stories', on: config['corrstories'] do
    expect(@correspondent_page).to have_blog_stories
  end
end
