require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require 'pry'

class LinkedListTest < Minitest::Test
  def setup
    @newnew = LinkedList.new
  end
  def test_it_exists
    assert_instance_of LinkedList, @newnew
  end
  def test_init_with_head_eq_head
    assert_nil @newnew.head
  end
  def test_appedning_sets_surname_first
    @newnew.append("Fart")
    binding.pry
    assert_equal "Fart", @newnew.head.surname
    assert_instance_of Node, @newnew.head
  end
  def test_count_method
    @newnew.append("Fart")
    assert_equal 1, @newnew.count
  end
end
