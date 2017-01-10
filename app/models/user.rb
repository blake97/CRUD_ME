class User < ActiveRecord::Base
  has_secure_password

  has_many :aquariums
  has_many :fishes, {through: :aquariums}

  validates :full_name, :username, :email, presence: true
  validates :username, uniqueness: true
end
