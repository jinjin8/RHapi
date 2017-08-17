Rails.application.routes.draw do
  root to: 'terms#index'
  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end
  resources :terms
end
