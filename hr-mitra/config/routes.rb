Rails.application.routes.draw do
  get 'employee/index'
  root 'home#index'

  resources :employees
  resources :documents


  # get 'pages/about_us'
  # get 'pages/contact_us'
  # get 'pages/privacy_policy'
  # get 'pages/terms_and_conditions'

# if in url we do not want pages/about_us 
# work as /about_us
  get 'about' => 'pages#about_us'
  get 'contact' => "pages#contact_us"
  get 'privacy-policy' => "pages#privacy_policy"
  get 'terms-and-conditions' => "pages#terms_and_conditions"

  
  # do not work
  # get '/terms_and_conditions'

  # ways to write routes
  # get 'home/index'
  # get '/home' => 'home#index'

  
end
