Rails.application.routes.draw do
  root 'subs#index'

  resources :subs do
    resources :topics
end
  # get '/subs', to: 'subs#index'
  # get 'subs/:id', to: 'subs#show'
  # delete '/subs/:id', to: 'subs#destroy'
delete "/sub/:id", to: "subs#destory", as: "destory_the_sub"
  # get "/randomthing/test", to: 'subs#top_three'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
