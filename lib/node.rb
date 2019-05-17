class Node
  attr_reader :surname,
              :next_node
  def initialize(surname)
    @surname = surname
    @next_node = nil
  end
  def assign_next(surname)
    @next_node = Node.new(surname)
  end
end
