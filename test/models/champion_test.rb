require 'test_helper'

class ChampionTest < ActiveSupport::TestCase

  test "Create a Champion" do
    champion=Champion.new
    champion.save
    assert true
  end

end
