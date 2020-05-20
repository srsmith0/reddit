Rails.application.routes.draw do

  resources :subs do
    resources :subjects
    resources :topics
end

resources :topics do
  resources :comments
end
  # get '/subs', to: 'subs#index'
  # get 'subs/:id', to: 'subs#show'
  # delete '/subs/:id', to: 'subs#destroy'
delete "/sub/:id", to: "subs#destory", as: "destory_the_sub"
  # get "/randomthing/test", to: 'subs#top_three'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
