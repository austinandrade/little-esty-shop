class Customer < ApplicationRecord
  has_many :invoices
  validates :first_name, :last_name, presence: true

  def self.top_5
    self.joins(invoices: :transactions).where('transactions.result = 0').group(:id).order('transactions.count').limit(5)
  end
end
