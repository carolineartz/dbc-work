# PSEUDOCODE
# Please write your pseudocode here and keep it commented
# INPUT: string
# OUTPUT: message indicating valid else failed password and violations
# What are the steps to solve the problem?  Write them out in plain english as best you can.
# make sure passed argument is a string
# test the password against validity rules
# return or print appropriate valid/invalid + error message

# NOTE: my assumption is that the invalid message should always indicate ALL violated requirements

# INITIAL CODE:
def check_password(password)
  raise ArgumentError, 'Error: Requires string input.' unless password.respond_to?(:split) # check if input is string
  invalids = []

  invalids << 'six characters and no more than twenty' unless !!(password =~ /^.{6,20}\Z/)
  invalids << 'one uppercase letter' unless !!(password =~ /[A-Z]+/)
  invalids << 'one digit OR special character: !, @, #, $, %, &, *, +, :, ?' unless !!(password =~ /[0-9]|(!|@|#|\$|%|&|\*|\+|:|\?)/)

  return 'Valid Password' if invalids.empty?
  "Error. Must contain at least:\n" + invalids.join("\n")
end



# REFACTORED CODE:
def check_passwordr(password)
  raise ArgumentError, 'Error: Requires string input.' unless password.respond_to?(:split) # check if input is string

  patterns = { /^.{6,20}\Z/                      => 'six characters and no more than twenty',
               /[A-Z]+/                          => 'one uppercase letter',
               /[0-9]|(!|@|#|\$|%|&|\*|\+|:|\?)/ => 'one digit OR special character: !, @, #, $, %, &, *, +, :, ?'}

  invalids = patterns.keep_if do |pattern|
    (pattern =~ password) == nil
  end
  return 'Valid Password' if invalids.empty?
  "Error. Must contain at least:\n" + invalids.values.join("\n")
end


# DRIVER CODE
# true if string array as input returns defined error message
puts check_password(['ruby']) rescue (puts $!.message == 'Error: Requires string input.')

# true if returns messages for invalid length and missing uppercase/special char                                                                         #   error message
puts check_password('rddRy') ==
'Error. Must contain at least:
six characters and no more than twenty
one digit OR special character: !, @, #, $, %, &, *, +, :, ?'

# true if returns msg for missing uppercase letter
puts check_password('rubies!') ==
'Error. Must contain at least:
one uppercase letter'

# true if recognizes valid password format
puts check_password('my name is Caroline!') == 'Valid Password'

# true if returns msg for invalid length
puts check_password('your name is NOT Caroline!') ==
'Error. Must contain at least:
six characters and no more than twenty'

# INCLUDE REFLECTION HERE:
# For some reason this challenge seems more difficult than it needs to be--at least the way(s) I could
# think of to go about it. I'm very curious to see how other people solved it because I really don't
# think my approach is optimal. But I'm also not sure if my interpretation of printing a message for every
# requirement violation is common vs breaking and returning the first rule violated when there's at least 
# one violation. I like this problem though, it made me think quite a bit and also research/get more familiar
# with some of the hash and regexp methods. My refactored code is longer than my original code, but I felt the 
# logic was more explicit and thus easier to read/understand. Not sure!
