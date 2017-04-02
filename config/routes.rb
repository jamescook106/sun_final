Rails.application.routes.draw do

    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  scope "(:locale)", :locale => /en|fr|es/ do

  get 'search/index'
  get 'search/award'

  devise_for :users

  get 'news/index'
  get "/news/:id" => "news#specific"

  get "/champions" => "champion#index"
  get "/champions/:id" => "champion#champion_description"

  get "/knowledge" => "resource#index"
  get "/knowledge/new" => "resource#new"
  post "/knowledge/new" => "resource#create"
  get "/knowledge/:id" => "resource#full_description"

  get "/index" => "general#static", page:'index'
  get "/about_sun" => "general#static", page:'about_sun'
  get "/about_lr" => "general#static", page:'about_lr'
  get "/lr1" => "general#static", page:'lr1'
  get "/lr2" => "general#static", page:'lr2'
  get "/our_network" => "general#static", page:'our_network'
  get "/what_we_do" => "general#static", page:'what_we_do'
  get "/governance" => "general#static", page:'governance'
  get "/advocacy" => "general#static", page:'advocacy'
  get "/contact" => "general#static", page:'contact'
  get "/:page" => "general#static"

end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'general#static', page: "index"
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
