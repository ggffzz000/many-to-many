class CreateTenants < ActiveRecord::Migration[5.1]
  def change
    create_table :tenants do |t|
      t.integer :user_id
      t.integer :department_id
      t.timestamps
    end
  end
end
