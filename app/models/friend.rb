class Friend < ActiveRecord::Base
  # Friend
  has_many :magical_powers
  has_and_belongs_to_many :ponies, through: :friends_ponies
end
