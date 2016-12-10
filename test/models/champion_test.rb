require 'test_helper'

class ChampionTest < ActiveSupport::TestCase

  test "Create a Champion" do
    champion=Champion.new
    champion.save
    assert true
  end

  test "Featured Champion default false" do
    champion=Champion.new
    champion.save
    if champion.featured==false
      assert true, 'Featured Champion default false'
    else
      assert false, 'Featured Champion default true'
    end
  end

end
