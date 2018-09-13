class Pony < ActiveRecord::Base
  # lavender pony rose ylang ylang jasmine hyancinth lilac tiger lily buttercup
  has_many :magical_powers
  has_and_belongs_to_many :friends, through: :friends_ponies
end
