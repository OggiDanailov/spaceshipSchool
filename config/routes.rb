Rails.application.routes.draw do
   
  get 'departments/index'
  get 'departments/new'
  get 'departments/show'
  	root "welcome#home"
    get "/about" => "welcome#about"
    get "/contact" => "welcome#contact"
    get "/instructor/:id" => "instructors#show", :as => "instructor"
    get "/student/:id" => "student#show", :as => "student"

  	resources :articles do 
  		resources :comments
  	end

  	resources :departments do
      resources :courses
    end
  	resources :cohorts

# the three devise roles
  devise_for :admins, path: "admin"
  devise_for :instructors, path: "instructors"
  devise_for :students, path: "students"



end
