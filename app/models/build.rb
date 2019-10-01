class Build < ApplicationRecord
  has_many :builds_items
  has_many :items, through: :builds

  has_one :user
end
