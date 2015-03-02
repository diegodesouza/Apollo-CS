# The Stack

# Imagine you are at the local Indian restaurant for lunch.
# They are serving lunch buffet style. "Awesome," you say to yourself,
# "I don't have to choose between Palak Paneer and Tandoori Chicken."
# As you queue up, you notice the busboy push a stack of plates into the
# spring-loaded plate holder. Oh, what a sad state of affairs to be the plate at
# the bottom. You wait all day, supporting all the other plates, but rarely ever
# get to be put into use. You don't ponder too long about the fate of that plate
# since the queue is moving along. You take a peek at the top plate to see that
# it's clean,pop it off the top, serve up some tasty curry and jasmine rice
# for yourself, and you're on your way...
#
# Tucked away into this (poor) short story of going out for lunch are the methods
# that are provided by a Stack. We push items onto a stack much like the busboy
# loads plates onto the serving cart. We can take peek at the item at the top of
# the stack. We can remove, or pop, the top-most item. Exceeding the capacity of
# the serving cart by pushing too many plates onto the stack would cause the
# plates to topple and fall on the floor (Stack Overflow). Trying to pop a plate
# from an empty serving cart would leave you in a state of disappointment
# (Stack Underflow).
#
# Not counting the stack of plates at your local Indian place, stacks are used to
# solve a number of Computer Science problems:
#
# storing the return address from a function call
# maintaining a list of operations for the undo action
# parsing syntax
# implementing search algorithms, specifically Depth-First Search


class Stack
  def initialize
    @contents = []
    @index = 0
  end

  def push(item)
    @index += 1
    @contents[@index] = item
  end

  def peek
    @contents[@index]
  end

  def pop
    result = peek
    @index -= 1
    result
  end

  def empty?
   @index == -1
  end
end


# Challenge

# Write a Ruby class to solve the problem of matching brackets. It should return 
# true if all the brackets match in a given input. It should return false if not.
# Your class should support matching (, ), [, ], and {, }.
#
# Noncore Challenge
#
# Create line and character methods on your class that return the line and
# character number of the offending bracket(s) when valid? returns false.
#
# Noncore Challenge
#
# Remeber how we said that we shouldn't worry about the garbage data that
# persists when we pop an item off of our Stack class? Well, now that we have
# been using our Stack class for larger projects, its tendency to hog memory has
# become an issue. How can we address this problem? What changes would you need
# to make to the Stack class in order for it to release garbage data, but still
# be performant?
