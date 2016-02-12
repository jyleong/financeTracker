class Friendship < ActiveRecord::Base
  belongs_to :user
  belongs_to :friend, :class_name => 'User'
  ## but no friend class, so have to hash rocket show its class as a user
end
