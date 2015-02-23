################################################################################
# Implementing a linear Search
################################################################################
# •Iterate over every element in the list and determine if the value at each
# index is the input to be found.
# •When the input is found, we return the current index or position. If not found,
# continue the iteration until the entire list has been examined.

def linear_search(list_to_search, value_to_find)
  list_to_search.each_with_index do |current_value, current_index|
    return current_index if current_value == value_to_find
  end
end

# https://s3.amazonaws.com/hal-assets.launchacademy.com/searches/unordered_names.txt

names = IO.read('unordered_names.txt').split(',')
name_to_find = "James"
found_at = linear_search(names, name_to_find)

puts "Found '#{name_to_find}' at position #{found_at} in the list."

# Sample output
# Found 'James' at position 119 in the list.

# In the example above, we searched an unordered list but what impact would a
# sorted list have on our search performance? Let's benchmark both types of
# lists to see how our linear search performs.

require 'benchmark'

def linear_search(list_to_search, value_to_find)
  list_to_search.each_with_index do |current_value, current_index|
    return current_index if current_value == value_to_find
  end
end

name_to_find = "James"

unordered_names = IO.read('unordered_names.txt').split(',')
ordered_names = unordered_names.sort

Benchmark.bm(30) do |x|
  x.report("Unordered List Search:") { linear_search(unordered_names, name_to_find) }
  x.report("Ordered List Search:") { linear_search(ordered_names, name_to_find) }
end

#                                 user     system      total        real
# Unordered List Search:      0.000000   0.000000   0.000000 (  0.000034)
# Ordered List Search:        0.000000   0.000000   0.000000 (  0.000017)

################################################################################
# Implementing a Binary Search
################################################################################

def binary_search(list_to_search, value_to_find)
  low, high = 0, list_to_search.length
  middle = (low + high) / 2

  while (low <= high)
    middle = (low + high) / 2

    return list_to_search[middle] if list_to_search[middle] == value_to_find

    if list_to_search[middle] < value_to_find
      low = middle + 1 # search lower half
    else
      high = middle - 1 # search upper half
    end
  end

  nil # return nil if value wasn't found in list
end

ordered_names = IO.read('ordered_names.txt').split(',')
name_to_find = "Mark"

Benchmark.bm(30) do |x|
  x.report("Linear Ordered List Search:") { linear_search(ordered_names, name_to_find) }
  x.report("Binary Ordered List Search:") { binary_search(ordered_names, name_to_find) }
end

# user     system      total        real
# Linear Ordered List Search:      0.000000   0.000000   0.000000 (  0.000019)
# Binary Ordered List Search:      0.000000   0.000000   0.000000 (  0.000006)
#
# user     system      total        real
# Linear Ordered List Search:      0.000000   0.000000   0.000000 (  0.000030)
# Binary Ordered List Search:      0.000000   0.000000   0.000000 (  0.000011)
#
# user     system      total        real
# Linear Ordered List Search:      0.000000   0.000000   0.000000 (  0.000021)
# Binary Ordered List Search:      0.000000   0.000000   0.000000 (  0.000007)
