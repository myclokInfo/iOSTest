source "https://rubygems.org"

gem 'fastlane'
gem 'cocoapods'
gem 'danger'
gem 'danger-swiftlint'
gem 'danger-changelog', '~> 0.3.0'

plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval(File.read(plugins_path), binding) if File.exist?(plugins_path)

plugins_path = File.join(File.dirname(__FILE__), '.', 'Pluginfile')
eval(File.read(plugins_path), binding) if File.exist?(plugins_path)
