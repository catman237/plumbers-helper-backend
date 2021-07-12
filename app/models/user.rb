class User < ApplicationRecord
  belongs_to :tools
  belongs_to :jobs
end
