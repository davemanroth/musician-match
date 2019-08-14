# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

player_levels = [
  [ "Beginner", "0-1 year" ],
  [ "Some experience", "1-2 years" ],
  [ "Intermediate", "2-4 years" ],
  [ "Advanced", "4-8 years" ],
  [ "Expert", "8 years or more" ]
]

song_levels = ["Very easy", "Pretty easy", "Medium", "Difficult", "Very difficult", "Insane"] 

player_levels.each do |level, years_played|
  PlayerLevel.create!( level: level, years_played: years_played )
end

song_levels.each do |level|
  SongLevel.create!(level: level)
end

