class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: true
  validates :name, presence: true

  has_one :cart
  has_many :items, through: :carts

  def cart
    user_cart = super
    unless (user_cart)
      user_cart = Cart.create!(user_id: self.id)
    end
    user_cart
  end

  def add_item_to_cart(item)
    CartsItem.create!(cart_id: cart.id, item_id: item.id)
  end
end
