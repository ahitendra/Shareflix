class AddStatusToUsersGroups < ActiveRecord::Migration
  def change
  	add_column :users_groups, :status, :boolean, null: false, default: true
  end
end
