class RPNCalculator
  def evaluate(rpn)
    a = rpn.split(' ')
    array = a.inject([]) do |array, i|    
      if i =~ /\d+/ 
        array << i.to_i
      else
        b = array.pop(2)
        case 
          when i == "+" then array << b[0] + b[1]  
          when i == '-' then array << b[0] - b[1]  
          when i == '*' then array << b[0] * b[1]  
          when i == '/' then array << b[0] / b[1]  
        end
      end
    end
    p array.pop
  end
end