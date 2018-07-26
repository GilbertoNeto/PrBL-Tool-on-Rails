Rails.application.routes.draw do
  get 'home/index'
  get 'home/about'
  get 'home/login'
  get 'home/send_contact'
  get 'home/guest'

  get 'finders/index'
  get 'finders/projects_status'
  get 'finders/projects_institution'


  resources :rubrics
  resources :teams
  resources :products
  resources :projects

  devise_for :teachers, path: 'teachers', controllers: {
      sessions: "teachers/sessions",
      registrations: "teachers/registrations"
    }

    root to: "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
