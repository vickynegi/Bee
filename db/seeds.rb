# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#creating events
event1 = Event.find_or_create_by(name: 'Blood Donation', fees: 100, on_going: true)
event2 = Event.find_or_create_by(name: 'G Summit', fees: 1000, on_going: false)
event3 = Event.find_or_create_by(name: 'Carrear Counselling', fees: 500, on_going: false)
event4 = Event.find_or_create_by(name: 'Business Summit', fees: 2000, on_going: true)
event5 = Event.find_or_create_by(name: 'Leadership Summit', fees: 5000, on_going: true)
event6 = Event.find_or_create_by(name: 'Society meeting', fees: 1100, on_going: false)
event7 = Event.find_or_create_by(name: 'Loreal Fashion Week', fees: 12000, on_going: true)
event8 = Event.find_or_create_by(name: 'Alumini Summit', fees: 12000, on_going: false)
# event9 = Event.find_or_create_by(name: 'Buttercup Events', fees: 1500, on_going: true)
# event10 = Event.find_or_create_by(name: 'Slate & Crystal Events', fees: 1600, on_going: true)

# creating users
user1 = User.create(name: 'lucky', gender: "male", email: 'lucky@example.com', password: 'password', password_confirmation: 'password')
user2 = User.create(name: 'divya', gender: "female", email: 'divya@example.com', password: 'password', password_confirmation: 'password')
user3 = User.create(name: 'rohan', gender: "male", email: 'rohan@example.com', password: 'password', password_confirmation: 'password')
user4 = User.create(name: 'shanaya', gender: "female", email: 'shanaya@example.com', password: 'password', password_confirmation: 'password')
user5 = User.create(name: 'sheena', gender: "female", email: 'female@example.com', password: 'password', password_confirmation: 'password')
user6 = User.create(name: 'vinay', gender: "male", email: 'vinay@example.com', password: 'password', password_confirmation: 'password')

##associating events and users 
## storing attending info of the user in a particular event
UserEvent.create(user_id: user1.id, event_id: event1.id, is_attending: true)
UserEvent.create(user_id: user2.id, event_id: event1.id, is_attending: true)
UserEvent.create(user_id: user3.id, event_id: event1.id, is_attending: true)
UserEvent.create(user_id: user4.id, event_id: event1.id, is_attending: true)

UserEvent.create(user_id: user1.id, event_id: event2.id, is_attending: true)
UserEvent.create(user_id: user3.id, event_id: event2.id, is_attending: false)
UserEvent.create(user_id: user5.id, event_id: event2.id, is_attending: true)
UserEvent.create(user_id: user6.id, event_id: event2.id, is_attending: false)

UserEvent.create(user_id: user1.id, event_id: event3.id, is_attending: false)
UserEvent.create(user_id: user4.id, event_id: event3.id, is_attending: false)
UserEvent.create(user_id: user5.id, event_id: event3.id, is_attending: false)
UserEvent.create(user_id: user6.id, event_id: event3.id, is_attending: false)

UserEvent.create(user_id: user1.id, event_id: event4.id, is_attending: true)
UserEvent.create(user_id: user2.id, event_id: event4.id, is_attending: true)
UserEvent.create(user_id: user5.id, event_id: event4.id, is_attending: true)
UserEvent.create(user_id: user3.id, event_id: event4.id, is_attending: true)

UserEvent.create(user_id: user4.id, event_id: event5.id, is_attending: true)
UserEvent.create(user_id: user2.id, event_id: event5.id, is_attending: true)
UserEvent.create(user_id: user5.id, event_id: event5.id, is_attending: true)
UserEvent.create(user_id: user6.id, event_id: event5.id, is_attending: true)

UserEvent.create(user_id: user6.id, event_id: event6.id, is_attending: false)
UserEvent.create(user_id: user1.id, event_id: event6.id, is_attending: false)
UserEvent.create(user_id: user3.id, event_id: event6.id, is_attending: false)
UserEvent.create(user_id: user5.id, event_id: event6.id, is_attending: false)

UserEvent.create(user_id: user1.id, event_id: event7.id, is_attending: true)
UserEvent.create(user_id: user3.id, event_id: event7.id, is_attending: true)
UserEvent.create(user_id: user5.id, event_id: event7.id, is_attending: true)
UserEvent.create(user_id: user6.id, event_id: event7.id, is_attending: true)

UserEvent.create(user_id: user1.id, event_id: event8.id, is_attending: false)
UserEvent.create(user_id: user3.id, event_id: event8.id, is_attending: false)
UserEvent.create(user_id: user5.id, event_id: event8.id, is_attending: false)
UserEvent.create(user_id: user6.id, event_id: event8.id, is_attending: false)