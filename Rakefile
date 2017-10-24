# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

begin
  require 'ajax/tasks'
rescue Exception => e
  puts "Warning, couldn't load gem tasks: #{e.message}! Skipping..."
end
