require_relative 'node'
class LinkedList
  attr_reader :head

  def initialize()
    @head = nil
  end

  def append(node)
    if @head == nil
      new_node = Node.new(node)
      @head = new_node
    else
      new_node = Node.new(node)
      find_next_node.next_node = new_node
    end
  end

  def find_next_node
    node = @head
    while(node.next_node != nil)
      node = node.next_node
    end
    node
  end

  def count
    counter = 1
    node = @head
    while(node.next_node != nil)
      node = node.next_node
      counter += 1
    end
    counter
  end

  def to_string
    if @head.next_node.nil?
    "The #{@head.surname} Family"
    else
      while (find_next_node != nil)
        "The #{@head.surname} Family" + "followed by the #{find_next_node.surname}"
      end
    end
  end
end
