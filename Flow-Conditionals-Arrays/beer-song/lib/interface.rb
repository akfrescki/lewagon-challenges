require_relative 'beer_song'
# always require the file with the method you want to call in the interface.rb file

# get the argument from the command line and convert it to an integer
beer_start_count = ARGV[0].to_i
# call method always after getting the argument from the command line
# convert the variable to a song one to store the replacment of the bottle
song = beer_song(beer_start_count)

# song will have all the lines of the beer song
# replace the "1 bottles of beer" with "1 bottle of beer"
# thats why use gsub method
song = song.gsub("1 bottles of beer", "1 bottle of beer")

puts song