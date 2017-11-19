Spina::Engine.routes.draw do
  namespace :admin do
    namespace :hubspot do
      resources :contacts
      resources :events
    end
  end
end
