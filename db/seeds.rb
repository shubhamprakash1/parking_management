# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
                                                                      



users = User.create([
{:email=>'vendor0@abc.com',  :password=>'password', :password_confirmation=>'password',  :first_name=>'Jacob', :last_name=>'Smith', :role => 1},
{:email=>'vendor1@abc.com',  :password=>'password', :password_confirmation=>'password',  :first_name=>'Patricia', :last_name=>'Moore', :role => 1},
{:email=>'vendor2@abc.com',  :password=>'password', :password_confirmation=>'password',  :first_name=>'Emily', :last_name=>'Jones', :role => 1},
{:email=>'vendor3@abc.com',  :password=>'password', :password_confirmation=>'password',  :first_name=>'David', :last_name=>'Brown', :role => 1},
{:email=>'vendor4@abc.com',  :password=>'password', :password_confirmation=>'password',  :first_name=>'John', :last_name=>'Watt', :role => 1},
{:email=>'vendor5@abc.com',  :password=>'password', :password_confirmation=>'password',  :first_name=>'James', :last_name=>'Miller', :role => 1},
{:email=>'vendor6@abc.com',  :password=>'password', :password_confirmation=>'password',  :first_name=>'Mark', :last_name=>'Taylor', :role => 1},
{:email=>'vendor7@abc.com',  :password=>'password', :password_confirmation=>'password',  :first_name=>'Paul', :last_name=>'Thomas', :role => 1},
{:email=>'vendor8@abc.com',  :password=>'password', :password_confirmation=>'password',  :first_name=>'Robert', :last_name=>'Lee', :role => 1},
{:email=>'vendor9@abc.com',  :password=>'password', :password_confirmation=>'password',  :first_name=>'Mary', :last_name=>'Wilson', :role => 1},
{:email=>'vendor10@abc.com', :password=>'password', :password_confirmation=>'password',  :first_name=>'William', :last_name=>'Davis', :role => 1},
{:email=>'vendor11@abc.com', :password=>'password', :password_confirmation=>'password',  :first_name=>'Richard', :last_name=>'White', :role => 1},
{:email=>'vendor12@abc.com', :password=>'password', :password_confirmation=>'password',  :first_name=>'Linda', :last_name=>'Jeff', :role => 1},
{:email=>'vendor13@abc.com', :password=>'password', :password_confirmation=>'password',  :first_name=>'Daniel', :last_name=>'Eric', :role => 1},
{:email=>'vendor14@abc.com', :password=>'password', :password_confirmation=>'password',  :first_name=>'Elizabeth', :last_name=>'Garcia', :role => 1},
{:email=>'vendor15@abc.com', :password=>'password', :password_confirmation=>'password',  :first_name=>'Elizabeth', :last_name=>'Garcia', :role => 1},
{:email=>'vendor16@abc.com', :password=>'password', :password_confirmation=>'password',  :first_name=>'Elizabeth', :last_name=>'Garcia', :role => 1}
])