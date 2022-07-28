Rails.application.routes.draw do
  get 'port/search'
  get 'my_holdings/holdings' , to: 'my_holdings#holdings'
  get 'my_holdings/dispaly'
  #get ':user_stocks', to: 'user_stocks#create'
  resources :user_stocks, only: [:create, :destroy]
 
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
