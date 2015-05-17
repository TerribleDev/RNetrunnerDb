require_relative 'minitest_helper'

class TestNetrunnerDb < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::NetrunnerDb::VERSION
  end
  
end
