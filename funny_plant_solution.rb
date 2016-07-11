def funny_plant(people, fruit)
    garden = Array.new()
    fruit.times do
        garden.push(0)
    end
    until garden.reduce(:+) >= people
        garden.map!{|i| i+= 1}
        garden.reduce(:+).times do
            garden.push(0)
        end
    end
    return garden[0] + 1
end

puts funny_plant(15, 1)
puts funny_plant(200, 15)
puts funny_plant(50000, 1)
puts funny_plant(150000, 250)
