# stolen from rstat.us

require 'fileutils'

unless Rails.env.production?
  config_file = Rails.root.join("config/config.yml")
  FileUtils.cp((config_file.to_s + ".example"), config_file) unless config_file.exist?

  config = YAML.load_file(config_file)[Rails.env]

  config.each do |key, value|
    ENV[key] = value if ENV[key].blank?
  end
end
