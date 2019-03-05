Rails.application.routes.draw do



  post 'mailchimp/subscribe'
  resources :news
  resources :arch_request_approvals
  resources :arch_requests do
    collection do
      get '/confirm', to: 'arch_requests#confirm'
    end
  end
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
