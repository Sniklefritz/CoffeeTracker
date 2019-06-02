class InventoryItem < ApplicationRecord
  validates :item_name, presence: true
end
