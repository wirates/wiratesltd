Wirates::Application.routes.draw do |map|
  
  devise_for :admins, :path_names => { :sign_in =>"login", :sign_out =>"logout"}

  map.connect '/contacts', :controller=>'home', :action=>'contact'
  map.connect '/request-a-quote', :controller=>'home', :action=>'quote'
  map.connect '/pages/:id', :controller=>'pages', :action=>'show'
  map.connect '/portfolio', :controller=>'home', :action=>'portfolio'
  map.connect '/company/:id', :controller=>'company', :action=>'show'
  map.connect '/service/:id', :controller=>'services', :action=>'show'
  map.connect '/admin/pages/:id/delete', :controller=>'admin/pages', :action=>'destroy'
  map.connect '/admin/services/:id/delete', :controller=>'admin/services', :action=>'destroy'
  map.connect '/admin/companies/:id/delete', :controller=>'admin/companies', :action=>'destroy'
  map.connect '/admin/contacts/:id/delete', :controller=>'admin/contacts', :action=>'destroy'


  # Administration
   namespace :admin do 
     match '/dashboard' => "dashboard#index", :as => :root
     resources :pages 
     resources :companies
     resources :services
  end
  

  root :to => "home#index"
  
end
