require 'test_helper'

class ServiceTest < ActiveSupport::TestCase
  def setup
    Service.destroy_all
    Service.create!
  end

  test "should not raise exception" do
    Service.state_machine.state
    assert_nothing_raised do
      Service.first.pending!
    end
  end
end
