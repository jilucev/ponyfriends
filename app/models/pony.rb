class Pony < ActiveRecord::Base
  # This is a comment
  has_many :magical_powers
  has_and_belongs_to_many :friends, through: :friends_ponies
end
