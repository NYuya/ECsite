class Item < ApplicationRecord
    attachment :image
    has_many :cart_items, dependent: :destroy
    has_many :orders,dependent: :destroy
    belongs_to :genre
    # validates :is_sale_status, inclusion: {in: [true, false]}
end
