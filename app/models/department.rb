class Department < ApplicationRecord
    has_many :tenants
    has_many :users ,:through => :tenants
    has_many :likes, as: :owner, dependent: :destroy
    has_many :comments,  as: :owner, dependent: :destroy
    def find_like(user)
      self.like2s.where( :user_id => user.id ).first
    end
end
