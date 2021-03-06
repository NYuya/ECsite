class Order < ApplicationRecord
    validates :customer_id, presence: true
    validates :pay_method, presence: true
    validates :ship_name, presence: true
    validates :ship_postcode, presence: true
    validates :ship_address, presence: true
    # 支払方法
    enum pay_method: { クレジットカード: 0, 銀行振込: 1 }
    # 注文ステータス
    enum status: { 入金待ち: 0,入金確認: 1,製作中: 2,発送準備中:3 ,発送済み:4 }
    belongs_to :customer
    has_many :order_items, dependent: :destroy
    
end
