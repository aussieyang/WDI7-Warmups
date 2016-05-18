class Dan

  def chat(message)
    if message.include?('?')
      'Sure.'
    else
      'Whatever.'
    end

    if message == message.upcase
      'WOAH CHILL OUT!'
    elsif message[-1] == "?"
      'Sure.'
    else
      'Whatever.'
    end
   end

end
