class Tenant < ApplicationRecord
    belongs_to :user
    belongs_to :department,optional: true
    #belongs_to :yy
end
