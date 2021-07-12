class Tool < ApplicationRecord
    has_many :users, dependent: :destroy
    has_many :jobs, through: :users
end
