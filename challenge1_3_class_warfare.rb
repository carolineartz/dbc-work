
####################################### PSEUDOCODE #####################################

# INPUT:
# OUPUT:
#

###################################### INITIAL CODE ####################################

class CreditCard
  attr_accessor :card_number

  def initialize(card_number)
    raise ArgumentError.new("Invalid card length.") if card_number.to_s.length != 16
    @card_number = card_number
  end

  def check_card
    card_digit_arr = @card_number.to_s.chars.map(&:to_i)
    summed_digit_arr = card_digit_arr.reverse.each_with_index.map do |x , i| 
      i.odd? ? ((x * 2).to_s.chars.map(&:to_i).inject(0) {|sum, ind| sum + ind}) : x 
    end
    summed_digit_arr.reduce(:+) % 10 == 0
  end
end

#################################### REFACTORED CODE ###################################


###################################### DRIVER CODE #####################################



####################################### REFLECTION #####################################

#
