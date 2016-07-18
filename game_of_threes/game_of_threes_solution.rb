#PART 1

n = gets.to_i
(puts "#{n} #{1-(n+1)%3}"; n = (n+1)/3) while n > 1
p 1

#####################################################

# Part 2

MOVES = [-2, -1, 0, 1, 2]

class Setup
  attr_reader :value, :parent, :sum

  def initialize(value, sum=0, parent=nil)
    @value = value
    @sum = sum
    @parent = parent
  end
end

class GameOfThrees

  def initialize(starting_value)
    @root = Setup.new(starting_value)
  end

  def display_solution
    solution = solve

    if solution.nil?
      puts "IMPOSSIBLE"
    else
      display_history(solution)
    end
  end

  private

    def solved?(node)
      return node.value == 1 && node.sum == 0
    end

    def solve
      stack = []
      stack << @root

      until stack.empty?
        node = stack.pop

        return node if solved?(node)

        next if node.value == 1

        MOVES.each do | move |
          new_value = (node.value + move)
          new_sum = node.sum + move

          if new_value % 3 == 0 && new_value > 0
            stack << Setup.new(new_value / 3, new_sum, node)
          end
        end
      end

      return nil
    end

    def display_history(node)
      stack = [node]

      until node.parent.nil?
        stack << node.parent
        node = node.parent
      end

      total_sum = 0

      until stack.length == 1
        node = stack.pop
        change = (stack.last.value * 3) - node.value
        total_sum += change

        puts "#{node.value} #{change}"
      end

      puts "#{stack.first.value} TOTAL CHANGE: #{total_sum}"
    end
end

my_game = GameOfThrees.new(18446744073709551615)
my_game.display_solution
