class Item < ApplicationRecord
  has_many :carts_items
  has_many :carts, through: :carts_items

  has_many :builds_items
  has_many :items, through: :builds

  def self.create_deck(name, brand, price_in_cents, description, image_url, length, width, material, mounting_type)
    create(
      name: name, brand: brand, price_in_cents: price_in_cents, description: description, image_url: image_url,
      type: "Deck",
      deck_length: length,
      deck_width: width,
      deck_material: material,
      deck_mounting_type: mounting_type,
    )
  end

  def self.create_trucks(name, brand, price_in_cents, description, image_url, color, size_in_mm, standard_kingpin, axel_degree)
    create(
      name: name, brand: brand, price_in_cents: price_in_cents, description: description, image_url: image_url,
      type: "Truck",
      color: color,
      truck_size_in_mm: size_in_mm,
      truck_standard_kingpin?: standard_kingpin,
      truck_axel_degree: axel_degree,
    )
  end

  def self.create_wheels(name, brand, price_in_cents, description, image_url, color, durometer, size_in_mm, center_cut)
    create(
      name: name, brand: brand, price_in_cents: price_in_cents, description: description, image_url: image_url,
      type: "Wheel",
      color: color,
      wheel_size_in_mm: size_in_mm,
      wheel_center_cut?: center_cut,
      wheel_durometer: durometer,
    )
  end

  def self.create_bearings(name, brand, price_in_cents, description, image_url, open, abec)
    create(
      name: name, brand: brand, price_in_cents: price_in_cents, description: description, image_url: image_url,
      type: "Bearing",
      bearing_open?: open,
      bearing_abec?: abec,
    )
  end

  def self.create_grip_tape(name, brand, price_in_cents, description, image_url, color, length, width)
    create(
      name: name, brand: brand, price_in_cents: price_in_cents, description: description, image_url: image_url,
      type: "Griptape",
      griptape_length: length,
      griptape_width: width,
    )
  end
end
