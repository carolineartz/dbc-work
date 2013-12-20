# Your awesome code goes here!
















#### Driver Code####

my_playlist = Playlist.new(one_by_one = Song.new("One by One", "Sirenia"), 
  world_so_cold = Song.new("World So Cold", "Three Days Grace"), 
  going_under = Song.new("Going Under", "Evanescence"))

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.print