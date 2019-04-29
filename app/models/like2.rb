class Like2 < ApplicationRecord
    belongs_to :user, class_name: 'User'
    belongs_to :owner, polymorphic: true
end
