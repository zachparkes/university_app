Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "courses#index"
  get "courses/new", to: "courses#new"
  get "about", to: "pages#about"
  # get "students", to: "students#index"

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  resources :students, except: [:destroy]

  post "course_enroll", to: "student_courses#create"
end
