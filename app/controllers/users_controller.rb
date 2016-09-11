class UsersController < ApplicationController

	before_filter :authenticate_user

	def groups
		@groups = current_user.groups
	end
end