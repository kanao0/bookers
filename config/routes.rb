Rails.application.routes.draw do
  resources :books
  root :to => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

  
  # get '/books' => 'books#new'
  # get '/books' => 'books#index'
  # get '/books' => 'books#show'
  # get '/books' => 'books#edit'
  # get '/' => 'homes#top'
