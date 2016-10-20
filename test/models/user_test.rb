require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "Default User is not admin" do
    user=User.new
    user.save
    if user.admin
      assert false, 'Default User is an admin'
    else
      assert true, 'Default User is not an admin'
    end
  end

  test "Default User is not sadmin" do
    user=User.new
    user.save
    if user.sadmin
      assert false, 'Default User is an sadmin'
    else
      assert true, 'Default User is not an sadmin'
    end
  end

  test "Sadmin creation confirmation" do
    user=User.new
    user.sadmin=true
    user.save
    if user.sadmin
      assert true, 'Sadmin creation successful'
    else
      assert false, 'Sadmin creation unsuccessful'
    end
  end

  test "admin creation confirmation" do
    user=User.new
    user.admin=true
    user.save
    if user.admin
      assert true, 'admin creation successful'
    else
      assert false, 'admin creation unsuccessful'
    end
  end

  test "Default User is not approved" do
    user=User.new
    user.save
    if user.approved
      assert false, 'Default User is approved'
    else
      assert true, 'Default User is not approved'
    end
  end

  test "approval confirmation" do
    user=User.new
    user.approved=true
    user.save
    if user.approved
      assert true, 'approval successful'
    else
      assert false, 'approval unsuccessful'
    end
  end

end
