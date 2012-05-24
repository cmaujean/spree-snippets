Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :snippets do
      collection do
        get :create_draft
      end
    end
  end
end
