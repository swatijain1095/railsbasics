Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  get "home/index" => "home#index"
  get "home/getquerystringvalues" => "home#getquerystringvalues"
  get "home/passdatatoviews" => "home#passdatatoviews"
  get "home/showdatetimeinfo" => "home#showdatetimeinfo"
  get "home/conditionalrendering" => "home#conditionalrendering"
  get "home/loopthrougharrays" => "home#loopthrougharrays"
  get "home/loadusers" => "home#loadusers"
  get "home/loadusers2" => "home#loadusers2"
  get "home/show_user_details" => "home#show_user_details"
  get "home/load_user_details/:id" => "home#load_user_details", as: "load_user_details"
  get "employees" => "employees#index", as: "employees"
  get "employees/new" => "employees#new", as: "employee_new"
  get "employees/edit/:id" => "employees#edit", as: "edit_employee"
  get "employees/:id" => "employees#show", as: "employee"
  patch "employees/:id" => "employees#update"
  get "delete_employee/:id" => "employees#delete_employee", as: "delete_employee"
  delete "employees/:id" => "employees#destroy"
  post "employees" => "employees#create", as: "employees_create"
  resources :users
  resources :singleemployeedelete, only: [ :index ] do
    delete "emp_delete", on: :collection
  end
  resources :bulkdeleteemployees, only: [ :index ] do
    delete "bulk_delete", on: :collection
  end
  resources :bulkupdates, only: [ :index ] do
    patch "bulk_update", on: :collection
  end
  resources :bulkinserts, only: [ :new, :create ]
  resources :offshoreemployees, only: [ :new, :create ]

  get "/locations/states" => "locations#states"
  get "/locations/cities" => "locations#cities"

  get "/shoppingcart/index" => "shoppingcart#index"
  get "/shoppingcart/product_list" => "shoppingcart#product_list"
  get "/shoppingcart/:product_id/add_cart" => "shoppingcart#add_cart", as: :add_cart
  get "/shoppingcart/:product_id/remove_cart" => "shoppingcart#remove_cart", as: :remove_cart
end
