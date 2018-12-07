Rails.application.routes.draw do
  resources :calendars do
    collection do
      get  '/subscribe', to: 'calendars#subscribe'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
