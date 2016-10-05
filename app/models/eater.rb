class Eater < ApplicationRecord
  has_one :event
  has_one :eater_group

end
