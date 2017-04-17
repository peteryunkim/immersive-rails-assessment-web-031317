class Guest < ApplicationRecord
  has_many :guest_episodes
  has_many :episodes, through: :guest_episodes


end
