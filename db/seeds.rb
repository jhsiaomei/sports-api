# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
100.times do
  Organization.create(
    :school => Faker::University.name,
    :name => Faker::Team.name,
    :logo => Faker::SlackEmoji.emoji,
    :color => Faker::Color.hex_color,
    :motto => Faker::Hipster.sentence
    )
end