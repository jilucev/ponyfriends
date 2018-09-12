class Friend < ActiveRecord::Base
  # Friendses
  has_many :magical_powers
  has_and_belongs_to_many :ponies, through: :friends_ponies
end
