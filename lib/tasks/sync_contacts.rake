namespace :stocks do
  desc "sync stocks"
  task sync: :environment do

    User.all.each do |user|
     user.credits -= 9000
     user.save
    end

end
