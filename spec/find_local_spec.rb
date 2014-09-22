require 'spec_helper'

describe 'find local' do
  before(:each) do
    @home_page = HomePage.new
    @home_page.load
  end
  let(:on_wide) { @home_page.on_wide }

  it 'button exists on wide', on: config['findstatus'] do
    skip 'on mobile' unless on_wide
    expect(@home_page).to have_local_button
  end
end
