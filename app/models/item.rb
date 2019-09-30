class Item < ApplicationRecord
    private def self.create_default(name,brand,price_in_cents,description)
        {name: name, brand: brand, price_in_cents: price_in_cents, description: description}
    end
    
    
    def self.create_deck(name, brand, type, price_in_cents, description, length, width, material, mounting_type)
        create(
            create_default(name,brand,price_in_cents,description)
            type: 'deck',
            deck_length: length,
            deck_width: width,
            deck_material: material,
            deck_mounting_type: mounting_type
        )
    end

        def self.create_trucks(name, brand, type, price_in_cents, description, color, size_in_mm, standard_kingpin?, axel_degree)
        create(
            create_default(name,brand,price_in_cents,description)
            type: 'deck',
            color: color,
            deck_length: size_in_mm,
            deck_width: standard_kingpin?,
            deck_material: axel_degree,
        )
    end

        def self.create_wheels(name, brand, type, price_in_cents, description, length, width, material, mounting_type)
        create(
            create_default(name,brand,price_in_cents,description)
            type: 'deck',
            deck_length: length,
            deck_width: width,
            deck_material: material,
            deck_mounting_type: mounting_type
        )
    end

        def self.create_bearings(name, brand, type, price_in_cents, description, length, width, material, mounting_type)
        create(
            create_default(name,brand,price_in_cents,description)
            type: 'deck',
            deck_length: length,
            deck_width: width,
            deck_material: material,
            deck_mounting_type: mounting_type
        )
    end

        def self.create_grip_tape(name, brand, type, price_in_cents, description, length, width, material, mounting_type)
        create(
            create_default(name,brand,price_in_cents,description)
            type: 'deck',
            deck_length: length,
            deck_width: width,
            deck_material: material,
            deck_mounting_type: mounting_type
        )
    end
end
