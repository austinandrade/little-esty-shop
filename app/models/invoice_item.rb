class InvoiceItem < ApplicationRecord
  belongs_to :invoice
  belongs_to :item
  has_many :merchants, through: :item

  enum status: [ :"pending", :"packaged", :"shipped" ]

  validates :quantity, :unit_price, :status, presence: true
end
