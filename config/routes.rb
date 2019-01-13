Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'algorith#index'
  get 'question1/answer' => 'algorith#question_1'
  get 'question2/answer' => 'algorith#question_2'
  get 'question3/answer' => 'algorith#question_3'
  get 'question4/answer' => 'algorith#question_4'
  get 'question5/answer' => 'algorith#question_5'
  namespace :api do
    resources :event_logs, only: [:create]
  end
end
