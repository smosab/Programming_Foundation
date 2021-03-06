# Easy_2

# Question 1

# In this hash of people and their age,

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# see if there is an age present for "Spot".

# Solution 1

# [162] pry(main)> ages["Spot"]
# => nil

# Question 2

# Add up all of the ages from our current Munster family hash:

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# Solution 2
# [177] pry(main)> total_ages = 0
# [180] pry(main)> ages.values.each {|v| total_ages += v }
# => [32, 30, 5843, 10, 22, 237]
# [181] pry(main)> puts total_ages
# 6411
# => nil

# Question 3

# In the age hash:

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# throw out the really old people (age 100 or older).

# Solution 3

# [203] pry(main)> ages.each { |k,v| if v >=  100 then ages.delete(k) end }


# Question 4

# Starting with this string:

# munsters_description = "The Munsters are creepy in a good way."
# Convert the string in the following ways (code will be executed on original munsters_description above):

# "The munsters are creepy in a good way."
# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# "the munsters are creepy in a good way."
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."
# Solution 4

# munsters_description = "The Munsters are creepy in a good way."

# x = 0
# loop do
#   if x == 0
#     puts munsters_description
#   elsif x == 1
#     puts munsters_description.swapcase
#   elsif x == 2
#     puts munsters_description.downcase
#   elsif x == 3
#     puts munsters_description.upcase
#   else
#     break
#   end
#   x += 1
# end

# Question 5

# We have most of the Munster family in our age hash:

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# add ages for Marilyn and Spot to the existing hash

# additional_ages = { "Marilyn" => 22, "Spot" => 237 }

# Solution 5
# [5] pry(main)> ages.merge(additional_ages)
# => {"Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237}

# Question 6

# Pick out the minimum age from our current Munster family hash:

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# Solution 6

# [9] pry(main)> ages.values.min
# => 10

# Question 7

# See if the name "Dino" appears in the string below:

# advice = "Few things in life are as important as house training your pet dinosaur."

# Solution 7

# [18] pry(main)> advice.include?("Dino")
# => false

# Question 8

# In the array:

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# Find the index of the first name that starts with "Be"

# Solution 8

# flintstones.find_index{|name| name.include?("Be")}

# Question 9

# Using array#map!, shorten each of these names to just 3 characters:

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Solution 9

# [69] pry(main)> flintstones.map {|name| name.slice(0..2)}
# => ["Fre", "Bar", "Wil", "Bet", "Bam", "Peb"]



