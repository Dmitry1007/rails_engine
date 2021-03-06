class Api::V1::MerchantsController < ApplicationController
  respond_to :json

  def index
    respond_with Merchant.all
  end

  def show
    respond_with Merchant.find_by(id: params[:id])
  end

  def find
    respond_with Merchant.find_by_attribute(merchant_params)
  end

  def find_all
    respond_with Merchant.find_all_by_attribute(merchant_params)
  end

  def random
    respond_with Merchant.order("RANDOM()").first
  end

  def merchant_items
    respond_with Merchant.find_merchant_items(merchant_params)
  end

  def merchant_invoices
    respond_with Merchant.find_merchant_invoices(merchant_params)
  end

  def most_revenue
    respond_with Merchant.top_revenue(params[:quantity].to_i)
  end

  def most_items
    respond_with Merchant.most_items_sold(params[:quantity].to_i)
  end

  def revenue_by_date
    respond_with Merchant.total_revenue_for_date(params[:date])
  end

  def single_merchant_revenue
    respond_with Merchant.find_by(id: params[:id]).merchant_revenue
  end

  def single_merchant_revenue_for_date
    respond_with Merchant.find_by(id: params[:id]).revenue_for_date(params[:date])
  end

  def favorite_customer
    respond_with Merchant.find_by(id: params[:id]).favorite_customer
  end

  private

  def merchant_params
    params.permit(:id, :name, :created_at, :updated_at)
  end
end
