class LinkedList
  def initialize
    @head = nil
  end

  def each
    node = @head

    while !node.nil?
      yield(node.data)
      node = node.next
    end
  end

  def prepend(value)
    @head = Node.new(value, @head)
  end

  class Node
    attr_accessor :data, :next

    def initialize(data, next_node)
      self.data = data
      self.next = next_node
    end
  end
end

# > list = LinkedList.new
# > list.prepend(3)
# > list.prepend(2)
# > list.prepend(1)
# > list.each { |val| puts val }
# 1
# 2
# 3

# As an exercise, try implementing additional methods on the LinkedList class
# to support accessing individual elements, inserting values in arbitrary
# locations, or removing nodes:

class LinkedList
  def [](index)
    # Code for accessing an individual element...
  end

  def insert(index, value)
    # Code for inserting a node...
  end

  def delete_at(index)
    # Code for removing a node...
  end
end
