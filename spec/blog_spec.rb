require 'spec_helper'

describe 'blog index' do
  before(:each) do
    @blog_page = BlogPage.new
    @blog_page.load
  end

  it 'has stories', on: config['blogstatus'] do
    expect(@blog_page).to have_blog_stories minimum: 3
  end

  it 'has follow us', on: config['blogfollowus'] do
    expect(@blog_page).to have_follow_us
  end
end
