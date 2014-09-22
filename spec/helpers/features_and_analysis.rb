class FeaturesAndAnalysis < SitePrism::Page
  extend Helpers

  set_url config['homepage']

  element :features_and_analysis, '.features-and-analysis__stories'
end
