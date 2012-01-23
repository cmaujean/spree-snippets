# encoding: utf-8

require 'rspec/core/rake_task'
require 'spree/core/testing_support/common_rake'

Bundler::GemHelper.install_tasks
Bundler.setup

RSpec::Core::RakeTask.new

desc "Default Task"
task :default => [:spec]

desc "Generates a dummy app for testing"
task :test_app do
  ENV['LIB_NAME'] = 'spree/api'
  Rake::Task['common:test_app'].invoke
  system("rails g spree_snippets:install")
  system("bundle exec rake db:migrate RAILS_ENV=test AUTO_ACCEPT=true")
end
