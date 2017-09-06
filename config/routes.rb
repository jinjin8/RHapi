Rails.application.routes.draw do
  # root to: 'charts#index'

  resources :problems do
    get 'page/:page', action: :index, on: :collection, as: ''
    collection do
      get :problem
    end
  end

  resources :charts do
    collection do
      get :chart
    end
  end
end
