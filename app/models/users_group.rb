class UsersGroup < ActiveRecord::Base
	belongs_to :user, :inverse_of => :users_groups
	belongs_to :group, :inverse_of => :users_groups

	default_scope { where("users_groups.status = 1") }

	after_save :after_save_tasks

	def after_save_tasks
		if self.group.users.length == 4
			self.group.formed = true
		else
			self.group.formed = false
		end
		self.group.save
	end

end
