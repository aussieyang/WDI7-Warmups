class Allergies
  SOURCE = ["eggs", "peanuts", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"]

  def initialize(score)
    @score = score
  end

  def list
    SOURCE.select do |item|
      allergic_to?(item)
    end
  end

  def allergic_to?(item)
    index = SOURCE.index(item)
    @score & (2 ** index) > 0
  end
end


# class Allergies
#   def allergies(score)
#     allergies = {1 => "eggs", 2 => "peanuts", 4 => "shellfish", 8 => "strawberries", 16 => "tomatoes", 32 => "chocolate", 64 => "pollen", 128 => "cats"}
#
#     has_allergies = []
#     7.downto(0) do |num|
#       if score >= 2**num
#         has_allergies << allergies[2**num]
#         score -= 2**num
#       end
#     end
#     return
#   end
#
# end
