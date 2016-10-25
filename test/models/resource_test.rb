require 'test_helper'

class ResourceTest < ActiveSupport::TestCase

  test "Create an invalid Resource" do
    resource=Resource.new
    assert !resource.valid?
    resource.name='1'
    assert !resource.valid?
  end

  test "Create a valid Resource" do
    resource=Resource.new
    resource.name='Test'
    resource.short = 'Test Short'
    resource.long = 'Test Long'
    assert resource.valid?
  end
end
