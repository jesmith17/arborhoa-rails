Rails.application.routes.draw do



  mount HealthMonitor::Engine, at: '/health'

  devise_for :users,
             path: '',
             path_names: {
                 sign_in: 'login',
                 sign_out: 'logout',
                 registration: 'signup'
             },
             controllers: {
                 sessions: 'sessions',
                 registrations: 'registrations'
             }
  resources :users, only: [:show, :index, :update]
  resources :calendars do
    collection do
      get  '/subscribe', to: 'calendars#subscribe'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
