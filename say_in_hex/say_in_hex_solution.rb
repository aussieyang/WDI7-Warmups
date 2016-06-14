#function will map key to the hash and return the partial sentence
 #will always receive string length-2
 def map(two_word_hex)

   # Create a mapping hash with the keyword as index
   # Each index points to an array
   # Array contains both pronounciations of keyword
   mapping = {"A" => ["atta", "a"],
              "B" => ["bibbity", "bee"],
              "C" => ["city", "cee"],
              "D" => ["dickety","dee"],
              "E" => ["ebbity","ee"],
              "F" => ["fleventy","ef"],
              "1" => ["eleventy","one"],
              "2" => ["twenty","two"],
              "3" => ["thirty","three"],
              "4" => ["fourty","four"],
              "5" => ["fifty","five"],
              "6" => ["sixty","six"],
              "7" => ["seventy","seven"],
              "8" => ["eighty","eight"],
              "9" => ["ninety","nine"],
              "0" => ["",""]
              }

    first = two_word_hex.slice(0)
    second = two_word_hex.slice(1)

    twoSentence = [mapping[first][0], "-", mapping[second][1]].join
    return twoSentence

end

#function processes input and constructs sentence from parts
def createSentence(hex)

  hex.slice!(0..1) # a '!' character implies it will modify the object that called the function

  if hex.length == 2
    sentence = map(hex)
  elsif  hex.length == 4
    firstHalf = map(hex.slice(0..1)) #send the first half to map
    secondHalf = map(hex.slice(2..3)) #send the second half to map
    sentence = [firstHalf, " bitey ", secondHalf].join #combine the two halfs and bitey
  else
    puts "Invalid input."
   end

  return sentence

end


print "Insert hex string as 0x## or 0x####: "
userInput = gets.chomp
puts ["0x", userInput, " ", createSentence(userInput)].join
