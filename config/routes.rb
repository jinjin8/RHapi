Rails.application.routes.draw do
#Pluralizing routes is a Rails naming convention
  resources :problems
  resources :charts
end
