class InvoicesController < ApplicationController

  def index
    @merchant = Merchant.find(params[:merchant_id])
    @merchant_invoices = @merchant.invoices.uniq
  end
  def show 
    @invoice = Invoice.find(params[:id])
  end

end
