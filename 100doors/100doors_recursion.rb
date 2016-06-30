
def endstate
  doors = []

  100.times do
    doors << 0
  end

  for index in 0..99
    for multiplier in 1..100
      if (index + 1) % multiplier == 0
        if doors[index] == 0
          doors[index] = 1
        else
          doors[index] = 0
        end
      end
    end
  end

  return doors

end


p endstate()
