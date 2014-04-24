class RPNCalculator

  def evaluate(string)
    while string.include?(' ')
      string.sub!(/(-?\d+)\s(-?\d+)\s([\+\-\*])/) { 
        $1.to_i.send($3, $2.to_i) 
      }
    end 
    string.to_i 
  end

end