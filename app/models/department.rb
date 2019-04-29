class Department < ApplicationRecord
    has_many :tenants
    has_many :users ,:through => :tenants
end
