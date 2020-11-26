Rails.application.routes.draw do
  root 'homes#top'

  devise_for :users

  resources :users, only: [:show, :edit, :update] #ユーザー情報

  #お題登録完了ページ
  get 'votes/complete' => 'votes#complete', as: 'complete'

  resources :votes, only: [:new, :create, :index, :show, :destroy, :update] do#投票お題
    resources :topics, only: [:create, :destroy] do #投票題
      resource :polls, only: [:create, :destroy] #投票
    end
  end

  resources :results, only: [:index, :show] #お題結果





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
