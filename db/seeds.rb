# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Calendar.create(title: 'Test Event', description: 'Testing that I can create events correctly', start_date: DateTime.now, end_date: DateTime.now + 6.hours, url: nil);
User.create(
    email: "jesmith17@gmail.com",
    password: "Titleist",
    password_confirmation: 'Titleist'
)