class Service < ActiveRecord::Base
  state_machine :status, :initial => :pending do
    event :active do
      transition :pending => :active
    end

    event :pending do
      transition any => :pending
    end
  end
end
