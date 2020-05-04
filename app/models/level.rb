class Level < ApplicationRecord
  has_many :statistics
  has_many :characters, through: :statistics
  has_many :users, through: :statistics
end
