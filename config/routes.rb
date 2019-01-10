Rails.application.routes.draw do
 
  	root "courses#index"

  	resources :articles do 
  		resources :comments
  	end

  	resources :courses

# the three devise roles
  devise_for :admins, path: "admin"
  devise_for :instructors, path: "instructors"
  devise_for :students, path: "students"



end
