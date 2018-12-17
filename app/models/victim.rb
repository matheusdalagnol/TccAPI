class Victim < ApplicationRecord
  belongs_to :aggressor
  has_many :tracks, as: :trackable
end
