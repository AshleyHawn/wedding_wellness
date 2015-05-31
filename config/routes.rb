Rails.application.routes.draw do
  # Routes for the Daily_note resource:
  # CREATE
  get "/daily_notes/new", :controller => "daily_notes", :action => "new"
  post "/create_daily_note", :controller => "daily_notes", :action => "create"

  # READ
  get "/daily_notes", :controller => "daily_notes", :action => "index"
  get "/daily_notes/:id", :controller => "daily_notes", :action => "show"

  # UPDATE
  get "/daily_notes/:id/edit", :controller => "daily_notes", :action => "edit"
  post "/update_daily_note/:id", :controller => "daily_notes", :action => "update"

  # DELETE
  get "/delete_daily_note/:id", :controller => "daily_notes", :action => "destroy"
  #------------------------------

  # Routes for the Coach resource:
  # CREATE
  get "/coaches/new", :controller => "coaches", :action => "new"
  post "/create_coach", :controller => "coaches", :action => "create"

  # READ
  get "/coaches", :controller => "coaches", :action => "index"
  get "/coaches/:id", :controller => "coaches", :action => "show"

  # UPDATE
  get "/coaches/:id/edit", :controller => "coaches", :action => "edit"
  post "/update_coach/:id", :controller => "coaches", :action => "update"

  # DELETE
  get "/delete_coach/:id", :controller => "coaches", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------


  devise_for :brides
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  root "welcome#index"

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
