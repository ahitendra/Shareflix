class GroupsController < ApplicationController

	before_filter :authenticate_user

	def new

	end

	def create
		if current_user.groups.length >= 1
			flash[:error] = "You are already a member of a group"
			redirect_to :back
		else
			group = Group.new(:name => params[:group][:name], :admin_id => current_user.id)
			group.save!
			users_group = UsersGroup.new(:group_id => group.id, :user_id => current_user.id)
			users_group.save!
			redirect_to group
		end
	end

	def show
		@group = Group.find(params[:id])
		if !current_user.groups.unscoped.where(:id => @group.id).present?
			redirect_to root_path and return
		end
	end


	def index
		@groups = Group.where(:formed => false)
		@num_of_grps = current_user.groups.length
	end

end
