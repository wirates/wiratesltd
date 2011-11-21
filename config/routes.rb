Wirates::Application.routes.draw do |map|
  
  devise_for :admins, :path_names => { :sign_in =>"login", :sign_out =>"logout"}

  map.connect '/contacts', :controller=>'home', :action=>'contact'
  map.connect '/pages/:id', :controller=>'pages', :action=>'show'
  map.connect '/portfolio', :controller=>'home', :action=>'portfolio'
  map.connect '/company/:id', :controller=>'company', :action=>'show'
  map.connect '/service/:id', :controller=>'services', :action=>'show'

  # Administration
   namespace :admin do 
     match '/dashboard' => "dashboard#index", :as => :root
     resources :pages 
     resources :companies
     resources :services
  end
  

  root :to => "home#index"
  
end
