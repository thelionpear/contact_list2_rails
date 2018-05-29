Rails.application.routes.draw do
  get 'static_contacts/home'
  get 'static_contacts/about'
root 'static_contacts#home'

get '/about', to: 'static_contacts#about'

resources :contacts 

end

