require 'yaml'

module Helpers
  def config
    YAML.load(File.open("configs/#{ENV['CONFIG']}"))
  end
end
