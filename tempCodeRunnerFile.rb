    secret_code.each_with_index do |element, index|
      if index == guess.index(element)
        guess[guess.index(element)] = 0
        black += 1
      elsif guess.index(element)
        guess[guess.index(element)] = 0
        white += 1
      else
        none += 1

      end
    end