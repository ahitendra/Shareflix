class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
    	t.string :name, null: false
    	t.boolean :formed, null: false, default: false
      t.timestamps
    end
  end
end
