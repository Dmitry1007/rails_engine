Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      # get "merchants/:id/customers_with_pending_invoices", to: "merchants/:id/customers_with_pending_invoices"
      get "merchants/:id/favorite_customer", to: "merchants#favorite_customer"
      get "merchants/:id/revenue", to: "merchants#single_merchant_revenue_for_date"
      get "merchants/:id/revenue", to: "merchants#single_merchant_revenue"
      get "merchants/revenue", to: "merchants#revenue_by_date"
      get "merchants/most_items", to: "merchants#most_items"
      get "/merchants/most_revenue", to: "merchants#most_revenue"
      get "merchants/:id/invoices", to: "merchants#merchant_invoices"
      get "merchants/:id/items", to: "merchants#merchant_items"
      get "merchants/random", to: "merchants#random"
      get "merchants/find_all", to: "merchants#find_all"
      get "merchants/find", to: "merchants#find"
      resources :merchants, only: [:show, :index]

      get "customers/:id/transactions", to: "customers#transactions"
      get "customers/:id/invoices", to: "customers#invoices"
      get "customers/random", to: "customers#random"
      get "customers/find_all", to: "customers#find_all"
      get "customers/find", to: "customers#find"
      resources :customers, only: [:show, :index]

      get "invoices/:id/merchant", to: "invoices#merchant"
      get "invoices/:id/customer", to: "invoices#customer"
      get "invoices/:id/items", to: "invoices#items"
      get "invoices/:id/invoice_items", to: "invoices#invoice_items"
      get "invoices/:id/transactions", to: "invoices#invoice_transactions"
      get "invoices/random", to: "invoices#random"
      get "invoices/find_all", to: "invoices#find_all"
      get "invoices/find", to: "invoices#find"
      resources :invoices, only: [:show, :index]

      get "invoice_items/:id/item", to: "invoice_items#item"
      get "invoice_items/:id/invoice", to: "invoice_items#invoice"
      get "invoice_items/random", to: "invoice_items#random"
      get "invoice_items/find_all", to: "invoice_items#find_all"
      get "invoice_items/find", to: "invoice_items#find"
      resources :invoice_items, only: [:show, :index]

      get "transactions/:id/invoice", to: "transactions#invoice"
      get "transactions/random", to: "transactions#random"
      get "transactions/find_all", to: "transactions#find_all"
      get "transactions/find", to: "transactions#find"
      resources :transactions, only: [:show, :index]

      get "/items/:id/best_day", to: "items#best_day"
      get "items/most_items", to: "items#most_items"
      get "items/most_revenue", to: "items#most_revenue"
      get "items/:id/merchant", to: "items#merchant"
      get "items/:id/invoice_items", to: "items#invoice_items"
      get "items/random", to: "items#random"
      get "items/find_all", to: "items#find_all"
      get "items/find", to: "items#find"
      resources :items, only: [:show, :index]
    end
  end
end
