class Aquarium < ActiveRecord::Base
  has_many :fishes
  belongs_to :user

validates :aquarium_id, :common_name, :zone, :max_size, presence: true
end

