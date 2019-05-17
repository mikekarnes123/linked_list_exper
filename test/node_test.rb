require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require 'pry'

class NodeTest < Minitest::Test
  def setup
    @node = Node.new("Whocares")
  end
  def test_it_exists
    assert_instance_of Node, @node
  end

  def test_next_node_init_as_nil
    assert_nil @node.next_node
  end

  def test_surname_returns_name
    assert_equal "Whocares", @node.surname
  end
end
