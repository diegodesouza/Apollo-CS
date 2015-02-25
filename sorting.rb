#################################################################
# Selection sorting
#################################################################

# Source: "Sorting Algorithms Part 1"

def selection_sort(to_sort)
  for index in 0..(to_sort.length - 2)
    # select the first element as the temporary minimum
    index_of_minimum = index

    # iterate over all other elements to find the minimum
    for inner_index in index..(to_sort.length - 1)
      if to_sort[inner_index] < to_sort[index_of_minimum]
        index_of_minimum = inner_index
      end
    end

    if index_of_minimum != index
      to_sort[index], to_sort[index_of_minimum] = to_sort[index_of_minimum], to_sort[index]
    end
  end

  return to_sort
end

#################################################################
# Insertion sorting
#################################################################

# Source: "Sorting Algorithms Part 1"

def insertion_sort(to_sort)
  # index starts at one, we can skip the first element, since we would
  # otherwise take it and place it in the first position, which it already is
  for index in 1..(to_sort.length - 1)
    for inner_index in 0..(index - 1)
      if to_sort[inner_index] >= to_sort[index]
          to_sort.insert(inner_index, to_sort[index])
          to_sort.delete_at(index + 1)
      end
    end
  end

  return to_sort
end

#################################################################
# Bubble sorting
#################################################################

# Source: "Sorting Algorithms Part 1"

def bubble_sort(to_sort)
  sorted = false

  until sorted
      sorted = true

      for index in 0..(to_sort.length - 2)
        if to_sort[index] > to_sort[index + 1]
          sorted = false
          to_sort[index], to_sort[index + 1] = to_sort[index + 1], to_sort[index]
        end
      end
  end

  return to_sort
end
