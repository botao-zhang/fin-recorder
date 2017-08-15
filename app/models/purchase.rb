class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :entry
  belongs_to :place
end
