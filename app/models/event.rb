class Event < ApplicationRecord
  has_many :eater_groups
  has_many :groups, through: :eater_groups
  has_many :eaters

end
