Rails.application.routes.draw do
  get 'home/index'
  get 'home/quiz'
  match '/check_answer', to: "home#check_answer", via: [:post], as: "check_answer"
  resources :questions
  root to: "home#quiz"
end
