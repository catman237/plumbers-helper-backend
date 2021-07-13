class Tool < ApplicationRecord
    has_many :users

    has_many :jobs, through: :users
end
