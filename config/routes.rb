Rails.application.routes.draw do

  root 'home#index'

  resources :users do
    resources :websites 
    resource :settings
  end

  get 'home/index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/update'

  get 'sessions/edit'

  get 'sessions/destroy'

  get 'sessions/index'

  get 'sessions/show'

  get 'users/new'

  get 'users/create'

  get 'users/update'

  get 'users/edit'

  get 'users/destroy'

  get 'users/index'

  get 'users/show'

  # get 'settings/new'

  # get 'settings/create'

  # get 'settings/update'

  # get 'settings/edit'

  # get 'settings/destroy'

  # get 'settings/index'

  # get 'settings/show'

  # get 'websites/new'

  # get 'websites/create'

  # get 'websites/update'

  # get 'websites/edit'

  # get 'websites/destroy'

  # get 'websites/index'

  # get 'websites/show'




  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
 get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy' 
  



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
end
