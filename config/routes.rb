Rails.application.routes.draw do


  root 'homes#top'
  get 'home/about' => 'homes#about'
  resource :home, only: [:top, :about]
  devise_for :users, controllers: { registrations: 'users/registrations',
  									 sessions: 'users/sessions' }

  resources :books, only: [:create, :index, :show, :edit, :update]
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  resources :users, only: [:show, :index, :edit, :update]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
