require 'faker' #use faker gem to create random plausible names, cities, etc. 


50.times do 
City.create!(name: Faker::Nation.capital_city)
end

100.times do
Dogsitter.create!(name: Faker::Name.first_name, cities_id: rand(1..50))
end

100.times do 
Dog.create!(name: Faker::Name.first_name)
end

100.times do
 Stroll.create!(date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), dogsitter_id: Dogsitter.all.sample.id, dog_id: Dog.all.sample.id) 
end
puts """
#{Dogsitter.count} dogsitters created.
#{City.count} cities created.
#{Dog.count} dogs created.
#{Stroll.count} strolls created.
"""

