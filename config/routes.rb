Bloodborn::Application.routes.draw do
  resources :extras

  get "excerpts/index"
  get "excerpts/new"
  get "excerpts/create"
  get "excerpts/show"
  get "excerpts/edit"
  get "excerpts/update"
  get "excerpts/destroy"
  get "blogs/create"
  get "blogs/update"
  get "blogs/destroy"
  get "blogs/edit"
  get "blogs/new"
  get "blogs/index"
  get "blogs/show"
  
  root to: "home#index"
  get "/about" => "home#about", as: :about  
  get "/excerpts" => "home#excerpts", as: :excerpts
  get "/freebies" => "home#goodies", as: :freebies
  get "/bloodlines" => "home#bloodlines", as: :bloodlines
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

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

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
