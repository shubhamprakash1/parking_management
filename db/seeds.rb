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

user = User.find_or_initialize_by(email: 'admin@example.com')
user.password = 'welcome123' 
user.password_confirmation = 'welcome123' 
user.role = 'admin'
user.save!

user = User.find_or_initialize_by(email: 'vendor@example.com')
user.password = 'welcome123'
user.password_confirmation = 'welcome123'
user.role = 'vendor'
user.save!

user = User.find_or_initialize_by(email: 'user@example.com')
user.password = 'welcome123'
user.password_confirmation = 'welcome123'
user.role = 'user'
user.save!

event = Event.find_or_initialize_by(id: '1')
event.name = ' TalkWIZ Club Communication Meet in New Delhi'
event.description = 'We have designed the upcoming meeting based on public speaking in such a way that you will be critiqued each time you speak during the meeting and your strong areas and improvement areas will be shared among everyone at the meeting, over mails and via videos. The meetings will provide a fun and competitive learning environment.'
event.schedule_at = '2015-09-05 05:53:00'
event.map = 'https://www.google.co.in/maps/place/Sikandra+Rd,+Supreme+Court,+Mandi+House,+New+Delhi,+Delhi+110001/@28.6252423,77.2403453,17z/data=!3m1!4b1!4m2!3m1!1s0x390cfd2b367744a3:0xd9e28710fec42cc9?hl=en'
event.save!

event = Event.find_or_initialize_by(id: '2')
event.name = 'Affiliate Members side events - 21st General Assembly'
event.description = 'Events organized by the Affiliate Members programme For more information on the side events organized by the Affiliate Members Programme and to register'
event.schedule_at = '2015-09-12 05:53:00'
event.map = 'https://www.google.co.in/maps/place/Indraprastha+Engineering+College/@28.6590911,77.340698,17z/data=!3m1!4b1!4m2!3m1!1s0x390cfae76be7aa9d:0xd1ed7a9eb0167e0a'
event.save!

event = Event.find_or_initialize_by(id: '3')
event.name = '59th Meeting of the UNWTO Commission for the Americas'
event.description = 'The Secretariat of the World Tourism Organization has the honor to inform its Member States of the UNWTO Commission for the Americas that the 59th meeting of the UNWTO Commission for the Americas will take place in Medellin (Colombia), on Saturday 12 September 2015, from 16:00 to 18:00. The meeting is organized in the framework of the XXI session of the UNWTO General Assembly that will be held in Medellin, Colombia'
event.schedule_at = '2015-09-17 05:53:00'
event.map = 'https://www.google.co.in/maps/place/Embassy+Of+Colombia/@28.5605419,77.1554492,17z/data=!3m1!4b1!4m2!3m1!1s0x1467fa158bca2c93:0x54684952547aff27'
event.save!

event = Event.find_or_initialize_by(id: '4')
event.name = '2nd Euro-Asian Mountain Resorts Conference'
event.description = 'The World Tourism Organisation (UNWTO) and Ulsan Metropolitan City with support of the Government of the Republic of Korea are organizing the 2nd Euro-Asian Mountain Resorts Conference, in Ulsan, Republic of Korea (14 - 16 October 2015). Under the title “Paving the Way towards a Bright Future for Mountain Destinations” international experts will discuss current and future challenges, illustrate success stories and create once again a platform for exchange of innovative initiatives.'
event.schedule_at = '2015-09-16 05:53:00'
event.map = 'https://www.google.co.in/maps/place/%EC%9A%B8%EC%82%B0%EA%B4%91%EC%97%AD%EC%8B%9C%EC%B2%AD/@35.538739,129.311359,17z/data=!3m1!4b1!4m2!3m1!1s0x356632af402c9953:0xe1bb37dd36a2174d'
event.save!

event = Event.find_or_initialize_by(id: '5')
event.name = 'World Travel Market (WTM) - 2015'
event.description = 'UNWTO will once again be undertaking a number of events and activities at WTM London in 2015.  For more information on World Travel Market, please click here  Visit the UNWTO stand '
event.schedule_at = '2015-09-15 05:53:00'
event.map = 'https://www.google.co.in/maps/place/%EC%9A%B8%EC%82%B0%EA%B4%91%EC%97%AD%EC%8B%9C%EC%B2%AD/@35.538739,129.311359,17z/data=!3m1!4b1!4m2!3m1!1s0x356632af402c9953:0xe1bb37dd36a2174d'
event.save!

event = Event.find_or_initialize_by(id: '6')
event.name = 'UNWTO & WTM Ministers Summit'
event.description = 'The 2015 edition of the UNWTO & WTM Ministers’ Summit will look in particular into the following issues:
-   What makes a successful destination brand in today’s globalized media landscape
-   The links between nation branding and destination branding'
event.schedule_at = '2015-09-16 05:53:00'
event.map = 'https://www.google.co.in/maps/place/Indraprastha+Engineering+College/@28.6590911,77.340698,17z/data=!3m1!4b1!4m2!3m1!1s0x390cfae76be7aa9d:0xd1ed7a9eb0167e0a'
event.save!

parking = Parking.find_or_initialize_by(id: '1')
parking.name = 'RESOURCE PARKING LLC 
164 West 46th Street '
parking.event_id = '1'
parking.price = '20'
parking.total_slot = '5'
parking.vendor_id = '1'
parking.map = 'https://www.google.co.in/maps/place/Sikandra+Rd,+Supreme+Court,+Mandi+House,+New+Delhi,+Delhi+110001/@28.6252423,77.2403453,17z/data=!3m1!4b1!4m2!3m1!1s0x390cfd2b367744a3:0xd9e28710fec42cc9?hl=en'
parking.payment_url = 'https://www.paypal.com/in/webapps/mpp/home'
parking.save!

parking = Parking.find_or_initialize_by(id: '2')
parking.name = '
CLARITY 47 PARKING LLC
145 West 47th Street '
parking.event_id = '2'
parking.price = '15'
parking.total_slot = '4'
parking.vendor_id = '2'
parking.map = 'https://www.google.co.in/maps/place/Alirajpur,+Madhya+Pradesh+457887/@22.3054552,74.3541813,15z/data=!3m1!4b1!4m2!3m1!1s0x3961b6de60d4ec3f:0x1678a25c787d6993?hl=en'
parking.payment_url = 'https://www.paypal.com/in/webapps/mpp/home'
parking.save!

parking = Parking.find_or_initialize_by(id: '3')
parking.name = 'ASTOR PARKING LLC
1511-1515 Broadway '
parking.event_id = '3'
parking.price = '25'
parking.total_slot = '6'
parking.vendor_id = '3'
parking.map = 'https://www.google.co.in/maps/place/Arvi,+Maharashtra+442305/@20.6344762,79.1405189,17z/data=!3m1!4b1!4m2!3m1!1s0x3bd35bc6f9d6d87f:0x73c01c91f55c58d6?hl=en'
parking.payment_url = 'https://www.paypal.com/in/webapps/mpp/home'
parking.save!

parking = Parking.find_or_initialize_by(id: '4')
parking.name = '
ALVA 47 PARKING LLC
257-259 WEST 47TH STREET '
parking.event_id = '4'
parking.price = '30'
parking.total_slot = '4'
parking.vendor_id = '4'
parking.map = 'https://www.google.co.in/maps/place/Arvi,+Maharashtra+442305/@20.6344762,79.1405189,17z/data=!3m1!4b1!4m2!3m1!1s0x3bd35bc6f9d6d87f:0x73c01c91f55c58d6?hl=en'
parking.payment_url = 'https://www.paypal.com/in/webapps/mpp/home'
parking.save!

parking = Parking.find_or_initialize_by(id: '5')
parking.name = 'PORT PARKING LLC
235 West 48th Street '
parking.event_id = '5'
parking.price = '20'
parking.total_slot = '8'
parking.vendor_id = '5'
parking.map = 'https://www.google.co.in/maps/place/Arvi,+Maharashtra+442305/@20.6344762,79.1405189,17z/data=!3m1!4b1!4m2!3m1!1s0x3bd35bc6f9d6d87f:0x73c01c91f55c58d6?hl=en'
parking.payment_url = 'https://www.paypal.com/in/webapps/mpp/home'
parking.save!

parking = Parking.find_or_initialize_by(id: '6')
parking.name = 'ADVANCE PARKING LLC.
249-253 West 43rd Street '
parking.event_id = '5'
parking.price = '20'
parking.total_slot = '8'
parking.vendor_id = '1'
parking.map = 'https://www.google.co.in/maps/place/Arvi,+Maharashtra+442305/@20.6344762,79.1405189,17z/data=!3m1!4b1!4m2!3m1!1s0x3bd35bc6f9d6d87f:0x73c01c91f55c58d6?hl=en'
parking.payment_url = 'https://www.paypal.com/in/webapps/mpp/home'
parking.save!

parking = Parking.find_or_initialize_by(id: '7')
parking.name = 'ZENITH PARKING LLC
790 Eighth Avenue '
parking.event_id = '5'
parking.price = '20'
parking.total_slot = '8'
parking.vendor_id = '2'
parking.map = 'https://www.google.co.in/maps/place/Arvi,+Maharashtra+442305/@20.6344762,79.1405189,17z/data=!3m1!4b1!4m2!3m1!1s0x3bd35bc6f9d6d87f:0x73c01c91f55c58d6?hl=en'
parking.payment_url = 'https://www.paypal.com/in/webapps/mpp/home'
parking.save!

parking = Parking.find_or_initialize_by(id: '8')
parking.name = 'CIRCLE PARKING LLC
200-206 West 52nd Street. '
parking.event_id = '5'
parking.price = '20'
parking.total_slot = '8'
parking.vendor_id = '2'
parking.map = 'https://www.google.co.in/maps/place/Arvi,+Maharashtra+442305/@20.6344762,79.1405189,17z/data=!3m1!4b1!4m2!3m1!1s0x3bd35bc6f9d6d87f:0x73c01c91f55c58d6?hl=en'
parking.payment_url = 'https://www.paypal.com/in/webapps/mpp/home'
parking.save!

parking = Parking.find_or_initialize_by(id: '9')
parking.name = '1114 SIXTH PARKING LLC
1114 Avenue of the Americas '
parking.event_id = '5'
parking.price = '20'
parking.total_slot = '8'
parking.vendor_id = '4'
parking.map = 'https://www.google.co.in/maps/place/Arvi,+Maharashtra+442305/@20.6344762,79.1405189,17z/data=!3m1!4b1!4m2!3m1!1s0x3bd35bc6f9d6d87f:0x73c01c91f55c58d6?hl=en'
parking.payment_url = 'https://www.paypal.com/in/webapps/mpp/home'
parking.save!

vendor = Vendor.find_or_initialize_by(id: '1')
vendor.parking_id = '1'
vendor.user_id = '1'
vendor.save!

vendor = Vendor.find_or_initialize_by(id: '2')
vendor.parking_id = '2'
vendor.user_id = '2'
vendor.save!

vendor = Vendor.find_or_initialize_by(id: '3')
vendor.parking_id = '3'
vendor.user_id = '3'
vendor.save!

vendor = Vendor.find_or_initialize_by(id: '4')
vendor.parking_id = '4'
vendor.user_id = '4'
vendor.save!

vendor = Vendor.find_or_initialize_by(id: '5')
vendor.parking_id = '5'
vendor.user_id = '5'
vendor.save!
