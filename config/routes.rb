Rails.application.routes.draw do
  get "products/:id" => "products#show"
  get "products/by-collection/:collection_id" => "products#get_products_by_collection"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
