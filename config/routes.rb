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

  root 'general#static', page: "index"

end
