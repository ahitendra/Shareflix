class CreateNetflixAccounts < ActiveRecord::Migration
  def change
    create_table :netflix_accounts do |t|
    	t.string :username, null: false
    	t.string :password, null: false
    	t.integer :group_id, null: false
    	t.datetime :registered_on, null: false
    	t.datetime :expires_on, null: false
    	t.integer :amount, null: false, default: 0
      t.timestamps
    end
  end
end
