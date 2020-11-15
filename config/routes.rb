Rails.application.routes.draw do
  root 'homes#top'
  
  devise_for :users
  
  resources :users, only: [:show, :edit, :update] #ユーザー情報
  
  resources :votes, only: [:new, :create, :index, :show, :destroy] #投票お題
  
  resources :results, only: [:index, :show] #お題結果
  get 'votes/complete' => 'votes#complete', as: 'complete' #お題登録完了ページ
  
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
