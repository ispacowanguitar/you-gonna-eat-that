class EaterGroup < ApplicationRecord
  belongs_to :eaters
  belongs_to :event
  belongs_to :group
end
