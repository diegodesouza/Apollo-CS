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
