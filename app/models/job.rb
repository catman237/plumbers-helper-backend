class Job < ApplicationRecord
    has_many :users
    has_many :tools, through: :users
end
