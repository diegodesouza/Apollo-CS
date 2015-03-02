# The Queue

# A Queue, as you might already be familiar from queing up at the Post Office,
# is simply an ordered list of items (or people). You enter the queue from the end,
# and you leave the queue from the front. The other methods we would like to have
# are peek, which should show us what is at the front of the queue, and empty?,
# which tells us if there is anyone or anything left in line.

# Using the Queue

# Let's use the Queue to load in text data from a file, character by character.
# Once we have it loaded in, we can perform some analysis on it.

# If you need a text file http://textfiles.com/100/

# require_relative 'lib/queue' --can't find the project from source

buffer = Launch::Queue.new
File.open('paragraph.txt', 'r') do |file|
  f.each_char do |char|
    buffer.enter(char)
  end
end


# Challenge

# Now that you have your text file loaded into a buffer, let's do some
# processing on it. Write a method that performs a character count. The data
# structure it returns should be a Hash where each key is a letter, and the value
# is the number of occurances of that letter.
