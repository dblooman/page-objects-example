require 'spec_helper'

describe 'Comments' do
  before(:each) do
    @comments = Comments.new
    @comments.load
  end

  it 'button exists on story page', on: config['commentsbutton'] do
    expect(@comments).to have_comments_button
  end
end
