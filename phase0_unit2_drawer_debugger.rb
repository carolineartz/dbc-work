class Drawer

attr_reader :contents

# are there any more methods needed in this class?

def initialize
@contents = []
@open = true
end

def open
@open = true
end

def close
@open = false
end 

def add_item
@contents << item
end

def remove_item(item = @contents.pop) 
@contents.delete(item)
end

def dump  # what should this method return?
puts "Your drawer is empty."
end

def view_contents
puts "The drawer contains:"
@contents.each {|silverware| puts "- " + silverware.type }
end


class Silverware
attr_reader :type

#are there any more methods needed in this class?

def initialize(type, washed = true)
@type = type
@washed = washed
end

def eat
@washed = false
puts "eating with the #{type}"
end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?


fork = silverware_drawer.remove_item(fork)
fork.eat

#BONUS SECTION
# puts fork.washed



