class Build < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true

  has_many :builds_items
  has_many :items, through: :builds_items

  belongs_to :user

  def publish
    self.public = true
    self.save
  end

  def unpublish
    self.public = false
    self.save
  end
end
