Rails.application.routes.draw do
  get 'quizs/index'
  get 'quizs/create'
  devise_for :users

  root to: "quizs#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
