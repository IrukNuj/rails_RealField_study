Rails.application.routes.draw do
  resource :tasks
  root to: 'tasks#index'
end
