Rails.application.routes.draw do
  root to: 'events#index'
  get 'events/index'
  post 'attendance', to: 'events#attendance'
  get 'events/:id', to: 'events#show', as: 'event'
  devise_for :users
end
