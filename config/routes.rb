Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :snippets
  end
end
