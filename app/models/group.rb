class Group < ActiveRecord::Base
	has_many :users_groups, :inverse_of => :group
	has_many :users, :through => :users_groups

	# before_save :before_save_tasks

	private

	def before_save_tasks
		if self.id.present?
			if self.users.length == 4
				self.formed = true
			else
				self.formed = false
			end
		end
	end

end
