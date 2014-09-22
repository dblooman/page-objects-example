require 'spec_helper'

describe 'Scotland Decides Front Page' do
  before(:each) do
    @scotland = Scotland.new
    @scotland.load
  end

  it 'has topical stories', on: config['topicalstories'] do
    expect(@scotland).to have_topical_stories
  end

  it 'has poll widget', on: config['pollwidget'] do
    expect(@scotland).to have_poll_widget
  end

  it 'has has banner', on: config['hasbanner'] do
    @scotland.wait_for_election_banner
    expect(@scotland).to have_election_banner
  end

  it 'has issue explorer', on: config['issueexplorer'] do
    @scotland.wait_for_issue_explorer
    expect(@scotland).to have_issue_explorer
  end
end
