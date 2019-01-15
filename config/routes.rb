Rails.application.routes.draw do
 
  	root "welcome#home"
    get "/about" => "welcome#about"
    get "/contact" => "welcome#contact"
    get "/instructor/:id" => "instructors#show", :as => "instructor"
    get "/student/:id" => "students#show", :as => "student"
    post "/assign" => "students#assign"
    get "/courses" => "courses#all_courses", :as => "courses"

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
