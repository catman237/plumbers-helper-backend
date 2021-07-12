class Job < ApplicationRecord
    has_many :users, dependent: :destroy
    has_many :tools, through: :users
end
