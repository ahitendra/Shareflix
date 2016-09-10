class UsersGroup < ActiveRecord::Base
	belongs_to :user, :inverse_of => :users_groups
	belongs_to :group, :inverse_of => :users_groups

	default_scope { where("users_groups.status = 1") }
end
