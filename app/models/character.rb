class Character < ApplicationRecord
  has_many :statistics
  has_many :users, through: :statistics
  has_many :levels, through: :statistics
end
