namespace :sync do

  desc "Prevent the app to sleep"
  task :app => :environment do
    Net::HTTP.get(ENV['APP_DOMAIN'], '/')
  end
end
