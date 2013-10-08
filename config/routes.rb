Saad::Application.routes.draw do

  resources :sections

  resources :departments

  resources :timeslots

  resources :schedules

  resources :section_subjects

  resources :day_timeslots

  resources :professors

  resources :rooms

  resources :subjects

  resources :days

  resources :users

get 'admin' => 'admin#index'

controller :sessions do
    get 'login' => :new
    post 'login' => :create
    get 'logout' => :destroy
    delete 'logout' => :destroy
  end

get "website/index"

  controller :pages do
    get 'about' => :about
    get 'contact' => :contact
    get 'new_user' => :new_user
    get 'database' => :database
    get 'system' => :system
  end

  root :to => 'website#index', :as => 'website'
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
