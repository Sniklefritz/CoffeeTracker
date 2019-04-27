class InventoryItem < ApplicationRecord
  belongs_to :menu_items
  validates :item_name, presence: true
end
