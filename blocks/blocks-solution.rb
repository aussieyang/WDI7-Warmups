require('pry')

def can_make_word(str)

  blocks = [['B','O'], ['X','K'], ['D','Q'], ['C','P'], ['N','A'],
  ['G','T'], ['R','E'], ['T','G'], ['Q','D'], ['F','S'],
  ['J','W'], ['H','U'], ['V','I'], ['A','N'], ['E','R'],
  ['F','S'], ['L','Y'], ['P','C'], ['Z','M'],]

  strArray = str.split('')
  strArrayClone = str.split('')

  strArray.each do |letter|
    blocks.each do |row|
      row.each do |column|
        if letter == column
          blocks.slice!(blocks.index(row))
          strArray.delete(letter)
        end
      end
    end
  end

  if strArrayClone.length == 19 - blocks.length
    return true
  else
    return false
  end


end

p can_make_word('SQUAD')
