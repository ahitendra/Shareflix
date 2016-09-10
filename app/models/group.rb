class Group < ActiveRecord::Base
	has_many :users_groups, :inverse_of => :group
	has_many :users, :through => :users_groups
end
