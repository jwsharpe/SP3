class Item < ApplicationRecord
  def self.create_deck(name, brand, price_in_cents, description, image_url, length, width, material, mounting_type)
    create(
      create_default(name, brand, price_in_cents, description, image_url),
      type: "deck",
      deck_length: length,
      deck_width: width,
      deck_material: material,
      deck_mounting_type: mounting_type,
    )
  end

  def self.create_trucks(name, brand, price_in_cents, description, image_url, color, size_in_mm, standard_kingpin, axel_degree)
    create(
      create_default(name, brand, price_in_cents, description, image_url),
      type: "trucks",
      color: color,
      trucks_size_in_mm: size_in_mm,
      trucks_standard_kingpin?: standard_kingpin,
      trucks_axel_degree: axel_degree,
    )
  end

  def self.create_wheels(name, brand, price_in_cents, description, image_url, color, durometer, size_in_mm, center_cut)
    create(
      create_default(name, brand, price_in_cents, description, image_url),
      type: "wheels",
      color: color,
      wheels_size_in_mm: size_in_mm,
      wheels_center_cut?: center_cut,
      wheels_durometer: durometer,
    )
  end

  def self.create_bearings(name, brand, price_in_cents, description, image_url, open, abec)
    create(
      create_default(name, brand, price_in_cents, description, image_url),
      type: "bearings",
      bearings_open?: open,
      bearings_abec?: abec,
    )
  end

  def self.create_grip_tape(name, brand, price_in_cents, description, image_url, color, length, width)
    create(
      create_default(name, brand, price_in_cents, description, image_url),
      type: "grip_tape",
      grip_tape_length: length,
      grip_tape_width: width,
    )
  end

  private

  def self.create_default(name, brand, price_in_cents, description, image_url)
    { name: name, brand: brand, price_in_cents: price_in_cents, description: description, image_url: image_url }
  end
end
