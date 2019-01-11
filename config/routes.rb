Rails.application.routes.draw do
   
  	root "welcome#home"
    get "/about" => "welcome#about"
    get "/contact" => "welcome#contact"
    get "/instructor/:id" => "instructors#show", :as => "instructor"
    get "/student/:id" => "student#show", :as => "student"

  	resources :articles do 
  		resources :comments
  	end

  	resources :courses
  	resources :cohorts

# the three devise roles
  devise_for :admins, path: "admin"
  devise_for :instructors, path: "instructors"
  devise_for :students, path: "students"



end
