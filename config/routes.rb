Rails.application.routes.draw do
  namespace :admin do
    resources :snippets
  end
end
