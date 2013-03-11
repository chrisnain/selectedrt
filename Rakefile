#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Selectedrt::Application.load_tasks

desc "Runs cron maintenance tasks."
task :cron do
  puts "Running cron at #{Time.now.strftime('%Y/%m/%d %H:%M:%S')}..."
  # TODO: your cron code goes here
  every 1.minutes do
    Schedule.new(:amount => 3, :unit => 'Hours')
  end
  #0,10,20,30,40,50 * * * * /usr/local/bin/ruby /local/selectedrt/script/cron_retweet.rb
end