# We want you to: 
#  1. Make the code D.R.Y.
#  2. Use regular expressions wherever they make sense.
#  3. Make the code easy to read.
#  4. Make it flexible and easy to modify in case the cipher changes.
#  5. Write driver code so you know it's working with simple true and false statements 


# Stretch: Write the cipher method to encrypt english sentences.


def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentence = []
  cipher = {"e" => "a",
            "f" => "b", 
            "g" => "c", 
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x|
    found_match = false
    cipher.each_key do |y|
      if x == y
        decoded_sentence << cipher[y]
        found_match = true
        break
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*"
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x)
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")

  if decoded_sentence.match(/\d+/)
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence        
end


p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger&wsqifshc^nywx$kix%qi%1000000%fekw%gssp@vergl$hsvmxsw?")