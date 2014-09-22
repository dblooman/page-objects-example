require 'spec_helper'

describe 'live event' do
  before(:each) do
    @live_event = LiveEventPage.new
    @live_event.load
  end

  it 'has key points tab', on: config['livestatus'] do
    click_on(@live_event.key_points_button)
    @live_event.wait_for_key_points
    expect(@live_event).to have_key_points
  end

  it 'has a contribute form', on: config['formstatus'] do
    click_on(@live_event.contribute_form_button)
    @live_event.wait_for_contribute_form
    expect(@live_event).to have_contribute_form
  end
end
