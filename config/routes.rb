Rails.application.routes.draw do

  root 'pictures#index' #make index action of pictures the home page

  # delete 'pictures/:id' => 'pictures#destroy', as: "delete_picture" #route to delete a picture in the database

  # get 'pictures' => 'pictures#index' #index action in the pictures controller

  # post 'pictures' => 'pictures#create' # when user clicks submit buttons, it was post and update database with input from form
  # get 'pictures/new' => 'pictures#new' # request for page of forms for a new picture


  # get 'pictures/:id' => 'pictures#show', as: 'picture' #dynamic route where as: means refer to the route as picture_path

  # get 'pictures/:id/edit' => "pictures#edit", as: "edit_picture" #create route for edit pic by id page
  # patch 'pictures/:id' => "pictures#update"

  resources :pictures



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
