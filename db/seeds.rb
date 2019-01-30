# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



require 'faker'

Course.destroy_all
Student.destroy_all

10.times do 
  course = Course.create!(name: Faker::Esport.game)
end

40.times do
  student = Student.create!(name: Faker::Name.unique.name, course_id: (rand(Course.first.id..Course.last.id)))
end 