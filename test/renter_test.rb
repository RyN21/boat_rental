require 'minitest/autorun'
require 'minitest/pride'
require './lib/boat'
require './lib/renter'

class RenterTest < Minitest::Test
  def test_it_exists_and_has_attributes
    renter = Renter.new("Patrick Star", "4242424242424242")
    assert_instance_of Renter, renter
    assert_equal "Patrick Star", renter.name
    assert_equal "4242424242424242", renter.card_number
  end
end
