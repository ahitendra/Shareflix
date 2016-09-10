class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
    	t.string :key
    	t.string :through
    	t.decimal :amount, default: 0
    	t.integer :user_id
    	t.integer :group_id
    	t.boolean :lock
      t.timestamps
    end
  end
end
