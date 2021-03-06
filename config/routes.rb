Rails.application.routes.draw do

get "/" => "site#home"

# get  "/projects" => "projects#index"
# get "/projects/:id" => "projects#show"     #show rill give a single project 
# get "/projects/:project_id/entries" => "entries#index"  #index shows multiples entries
# get "/projects/:project_id/entries/new" => "entries#new"
# post "/projects/:project_id/entries" => "entries#create", as: :project_entries

 #.resources is a ruby method 
resources(:projects, only: [:index, :show, :new,  :create, :destroy]) do
  resources :entries, only: [:index, :new, :create, :edit, :update, :destroy]
end 

end



  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
