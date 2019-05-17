require_relative 'node'
require 'pry'
class LinkedList
  attr_reader :head
  def initialize
    @head = head
  end

  def append(surname)
    # if head is nil
    if @head == nil
      @head = Node.new(surname)
      return
    end
    # if starting node does not have node
    if @head.next_node == nil
      @head.assign_next(surname)
      return
    end
    #assign node to appropriate instance in chain of nodes and assign new node
    node = @head
    loop do
      node = node.next_node
      break if node.next_node == nil
    end
    node.assign_next(surname)
  end

  def count
    return 0 if @head == nil
    return 1 if @head.next_node == nil
    amount = 1
    node = @head.next_node
    loop do
      amount += 1
      break if node.next_node == nil
      node = node.next_node
    end
    amount
  end
end
