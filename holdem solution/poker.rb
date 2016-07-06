ranks = '23456789TJQKA'.chars
suits = '♠♥♣♦'.chars
cards  = ranks.product(suits).map(&:join)
# above is shorthand for .map{|x| x.join}

p cards

print 'How many players (2-22)? '
players = gets.to_i until (2..22) === players

cards.shuffle!
hands = Array.new(players) { [] }

# Deal one at a time (to prevent collusion).
2.times do
  players.times { |i| hands[i] << cards.pop }
end

river = [3, 1, 1].reduce([]) do |comm, n|
  cards.pop # Burn.
  # appends popped values from cards into comm array
  comm.concat cards.pop(n)
end

hands.each_with_index do |hand, i|
  puts "Hand ##{i.succ}: #{hand * ' '}"
end
puts "River: #{river * ' '}"



###############################################################################
#my version


def printCardName(number)
    if number < 14
            case number
            when 1
            "Ace of hearts"
            when 11
            "Jack of hearts"
            when 12
            "Queen of hearts"
            when 13
            "King of hearts"
            else
            "#{number} of hearts"
            end
        elsif number < 27
            number =number - 13
            case number
            when 1
            "Ace of diamonds"
            when 11
            "Jack of diamonds"
            when 12
            "Queen of diamonds"
            when 13
            "King of diamonds"
            else
            "#{number} of diamonds"
            end
        elsif number < 40
            number = number - (13*2)
            case number
            when 1
            "Ace of clubs"
            when 11
            "Jack of clubs"
            when 12
            "Queen of clubs"
            when 13
            "King of clubs"
            else
            "#{number} of clubs"
            end
        elsif number < 53
            number = number - (13*3)
            case number
            when 1
            "Ace of spades"
            when 11
            "Jack of spades"
            when 12
            "Queen of spades"
            when 13
            "King of spades"
            else
            "#{number} of spades"
            end
        else
        "Not a valid card"
    end
end

puts "How many players?\n"
a = gets.chomp.to_i
if a<2 or a>8
    while a<2 or a>8
        puts "Wrong number of players enter a number between 2 and 8.\n"
        a = gets.chomp.to_i
    end
end
deck = (1..52).to_a.shuffle
player_hands = Array.new(a) {Hash.new}
k=0
while k < 2
    i = 0
    while i< a
        player_hands[i][k] = deck.pop
    i+=1
end
k+=1
end
i = 1
player_hands.each{
    |x| puts "Player #{i} has been delt #{printCardName(x[0])} and #{printCardName(x[1])}"
    i += 1
 }
deck.pop
puts "The Flop is the #{printCardName(deck.pop)} the #{printCardName(deck.pop)} and the #{printCardName(deck.pop)}."
deck.pop
puts "The Turn is the #{printCardName(deck.pop)}"
deck.pop
puts "The River is the #{printCardName(deck.pop)}"
