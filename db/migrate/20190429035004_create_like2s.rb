class CreateLike2s < ActiveRecord::Migration[5.1]
  def change
    create_table :like2s do |t|
      t.integer  "user_id", comment: "创建用户id"
      t.string   "owner_type", comment: '评论类型'
      t.integer  "owner_id", comment: "评论对象id"
      t.timestamps
    end
  end
end
