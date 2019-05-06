class User < ApplicationRecord
    has_many :tenants
    has_many :departments, :through => :tenants 
    has_many :comments,  as: :owner, dependent: :destroy
end
