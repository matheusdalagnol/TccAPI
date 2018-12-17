class Aggressor < ApplicationRecord
  has_one :victim
  has_many :tracks, as: :trackable
end
