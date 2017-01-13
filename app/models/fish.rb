class Fish < ActiveRecord::Base
  belongs_to :aquarium
  validates :user_id, :salinity, :lighting, :capacity, presence: true
end
