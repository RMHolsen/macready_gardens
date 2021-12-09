Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do 
    resources :projects 
    # You're going to forget you nested projects under users, so don't forget. You nested projects under users. That's going to affect your controller.
  end 

end
