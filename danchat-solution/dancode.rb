class Dan

  def chat(message)

    if message == message.upcase
      return 'WOAH CHILL OUT!'
    elsif message[-1] == "?"
      return 'Sure.'
    elsif message[0..3] == 'Bro,'
      msg_num = message.downcase.gsub(/[aeio]/, 'a' => '4', 'e' => '3', 'i' => '1', 'o' => '0')
      for i in 1..30
        if msg_num[i].ord >= 97 && msg_num[i].ord <= 122 && msg_num[i-1].ord >= 97 && msg_num[i-1].ord <= 122
          msg_num[i] = msg_num[i].upcase
        end
      end
      return msg_num
    else
      return 'Whatever.'
    end

  end

end
