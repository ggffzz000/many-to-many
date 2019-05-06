class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string   "owner_type", comment: '评论类型'
      t.integer  "owner_id", comment: "评论对象id"
      t.timestamps
    end
  end
end
