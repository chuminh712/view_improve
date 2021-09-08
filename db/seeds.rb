# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
(0..20).each do |id|
    Evaluation.create(name: Faker::Games::Pokemon.name)
end
(0..20).each do |id|
    Exam.create(name: Faker::Games::Pokemon.move, evaluation_id: id, status: [true, false].sample)
end
(0..20).each do |id|
    Exam.create(name: Faker::Games::Pokemon.move, evaluation_id: id, status: [true, false].sample)
end
(0..20).each do |id|
    Exam.create(name: Faker::Games::Pokemon.move, evaluation_id: id, status: [true, false].sample)
end