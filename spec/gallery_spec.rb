require 'spec_helper'

describe 'Gallery page' do
  it 'can use viewer', on: config['galstatus'] do

    @gallery_page = GalleryPage.new
    @gallery_page.load
    expect(@gallery_page).to have_gallery_image
  end
end
