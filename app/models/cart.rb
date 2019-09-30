class Cart < ApplicationRecord
  belongs_to :user

  has_many :carts_items
  has_many :items, through: :carts_items

  def clear_cart
    carts_items.destroy_all
  end
end
