class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :login_name ,comment:'dengluming'
      t.integer :tenant_id ,comment:'waibujian'
      t.timestamps
    end
  end
end
