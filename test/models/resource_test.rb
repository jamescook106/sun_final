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

  test "Resource featured default is false" do
    resource=Resource.new
    resource.name='Test'
    resource.short = 'Test Short'
    resource.long = 'Test Long'
    resource.save
    if resource.featured==false
      assert true, 'Resource featured default is false'
    else
      assert false, 'Resource featured default is true'
    end
  end

  test "Resource protected default is false" do
    resource=Resource.new
    resource.name='Test'
    resource.short = 'Test Short'
    resource.long = 'Test Long'
    resource.save
    if resource.protected==false
      assert true, 'Resource protected default is false'
    else
      assert false, 'Resource protected default is true'
    end
  end

end
