class BuildsItem < ApplicationRecord
  belongs_to :item
  belongs_to :build
end
