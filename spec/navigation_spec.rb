require 'spec_helper'

describe 'Navigation' do
  before(:each) do
    @navigation = Navigation.new
    @navigation.load
  end
  let(:index_title) { @navigation.index_title }

  it 'opens to reveal links', on: config['navopen'] do
    @navigation.open_nav
    expect(@navigation.nav_status).to be_visible
  end

  it 'exists on page', on: config['navstatus'] do
    expect(@navigation).to have_nav_on_page
  end

  it 'has index title', on: config['indextitle'] do
    expect(@navigation).to have_content(index_title)
  end
end
