Rails.application.routes.draw do
  devise_for :users
   root 'tops#index'
   resources :tops, :only => [:index, :show]
   resources :questions, :except => [:show]
   resources :users
   resources :answers
   # 質問を作れなくするときは以下の形にしたほうがいいかもresources :questions, :except=>[:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
