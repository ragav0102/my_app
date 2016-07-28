namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Ragav",
                 email: "ragavh123@mail.com",
                 password: "foobar",
                 password_confirmation: "foobar")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "foobar"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end
