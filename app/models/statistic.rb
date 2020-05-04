class Statistic < ApplicationRecord
  belongs_to :user
  belongs_to :character
  belongs_to :level
end
