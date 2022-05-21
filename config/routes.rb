Rails.application.routes.draw do
  devise_for :users

  root to: "quizzes#index"

  resources :quizzes do

  member do
    get 'indexfinish'
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
