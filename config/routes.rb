Rails.application.routes.draw do
   root 'tops#index'
   resources :tops
   resources :questions, :except=>[:create]
   # 質問を作れなくするときは以下の形にしたほうがいいかもresources :questions, :except=>[:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
