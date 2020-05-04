class User < ApplicationRecord
  has_many :statistics
  has_many :characters, through: :statistics
  has_many :levels, through: :statistics
end
