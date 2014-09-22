require 'spec_helper'

describe 'features & analysis' do
  before(:each) do
    @features_page = FeaturesAndAnalysis.new
    @features_page.load
  end

  it 'exists on home page', on: config['fastatus'] do
    expect(@features_page).to have_features_and_analysis
  end

  it 'exists on story page', on: config['fastorystatus'] do
    expect(@features_page).to have_features_and_analysis
  end
end
