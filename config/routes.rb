Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get "merchants/:id/invoices", to: "merchants#merchant_invoices"
      get "merchants/:id/items", to: "merchants#merchant_items"
      get "merchants/random", to: "merchants#random"
      get "merchants/find_all", to: "merchants#find_all"
      get "merchants/find", to: "merchants#find"
      resources :merchants, only: [:show, :index]

      get "customers/random", to: "customers#random"
      get "customers/find_all", to: "customers#find_all"
      get "customers/find", to: "customers#find"
      resources :customers, only: [:show, :index]

      get "invoices/random", to: "invoices#random"
      get "invoices/find_all", to: "invoices#find_all"
      get "invoices/find", to: "invoices#find"
      resources :invoices, only: [:show, :index]

      get "invoice_items/random", to: "invoice_items#random"
      get "invoice_items/find_all", to: "invoice_items#find_all"
      get "invoice_items/find", to: "invoice_items#find"
      resources :invoice_items, only: [:show, :index]

      get "transactions/random", to: "transactions#random"
      get "transactions/find_all", to: "transactions#find_all"
      get "transactions/find", to: "transactions#find"
      resources :transactions, only: [:show, :index]

      get "items/random", to: "items#random"
      get "items/find_all", to: "items#find_all"
      get "items/find", to: "items#find"
      resources :items, only: [:show, :index]
    end
  end
end
