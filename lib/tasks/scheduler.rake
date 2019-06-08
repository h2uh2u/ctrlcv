desc "This task is called by the Heroku scheduler add-on"
task :dbclear => :environment do
  puts "Clearing db..."
  Clipboard.destroy_all(['updated_at < ?', 10.minutes.ago])
  puts "done."
end