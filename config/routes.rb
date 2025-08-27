Rails.application.routes.draw do
  resources :collections, only: %i[index show new create]
end
