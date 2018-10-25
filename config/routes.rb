Rails.application.routes.draw do
  resources :materials do
    resources :collections
  end
end
