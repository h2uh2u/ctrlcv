desc "This task is called by the Heroku scheduler add-on"
task :dbclear => :environment do
  Clipboard.destroy_all(['updated_at < ?', 10.minutes.ago])
end