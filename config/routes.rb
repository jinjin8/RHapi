Rails.application.routes.draw do
  root to: 'clinical_vocabularies#index'

  resources :clinical_vocabularies do
    get 'page/:page', action: :index, on: :collection, as: ''
    collection do
      get :by_term
    end
  end
end
