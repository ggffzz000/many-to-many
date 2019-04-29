class User < ApplicationRecord
    has_many :tenants
    has_many :departments, :through => :tenants 
end
