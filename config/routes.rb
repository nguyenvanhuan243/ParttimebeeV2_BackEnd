#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do
  apipie
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :jobs
      resources :users
      resources :sessions
      resources :searches
      resources :admins
      resources :feedbacks
      get '/users/:id/jobs', to: 'users#get_jobs'
      post '/users/reset-password',to: 'users#send_email_reset_password'
      post '/users/check-user-exist', to: 'users#check_user_exist'
      post '/users/check-current-password', to: 'users#check_current_password'
      post '/users/check-user-password', to: 'users#check_user_password'
      post '/users/login' => 'sessions#create'
      get '/jobs/:id/increase-view' => 'jobs#increase_view'
      post '/users/update-password' => 'users#update_password'
      post '/disposable-email/check' => 'disposable_email#check_disposable_email'
      post '/users/show-user-with-job-id' => 'users#show_user_with_job_id'
    end
  end

  resources :user do
    member do
      get :confirm_email
    end
  end
  get '/admin', to: 'admin#manage-jobs-employer'
  get '/admin/import-file', to: 'admin#import-file'
  get '/admin/category-job', to: 'admin#category-job'
  get '/admin/manage-jobs-employer', to: 'admin#manage-jobs-employer'
  get '/admin/delete-job', to: 'admin#delete_job'
  get '/admin/approve', to: 'admin#approve_job'
  get '/admin/blocking-email-list', to: 'admin#blocking-email-list'
  get '/admin/account-management', to: 'admin#account-management'
  match '/admin/blocking-email-list', to: 'admin#add_disposable_email', via: [:get, :post]
  match '/admin/category-job', to: 'admin#add_category_job', via: [:get, :post]
  match '/admin/quota-job', to: 'admin#quota_job', via: [:get, :post]
  match '/admin/category/import-file', to: 'admin#import_job', via: [:get, :post]
  match '/admin/delete_disposable_email/:id', to: 'admin#delete_disposable_email', via: [:get, :post]
  match '/admin/delete_category_job/:id', to: 'admin#delete_category_job', via: [:get, :post]
  get '/admin/logout', to: 'adminlogin#logout'
  get '/admin-login/forget-password', to: 'adminlogin#forget-password'
  match '/admin-login/forget-password', to: 'adminlogin#send_mail_reset_password', via: [:get, :post]
  get '/admin-login/:id/new-password', to: 'adminlogin#new-password'
  match '/admin-login/:id/new-password', to: 'adminlogin#update_password_reset', via: [:get, :post]
  get '/admin/delete-user', to: 'admin#delete-user'
  get '/admin/user-detail', to: 'admin#user-detail'
  get '/admin/user-detail/:id', to: 'admin#profile'
  get '/admin/delele', to: 'admin#delete_user'
  get 'admin-login', to: 'adminlogin#index'
  match '/admin-login', to: 'adminlogin#admin_login', via: [:get, :post]
  get 'admin/blocking', to: 'admin#blocking'
  match '/admin/blocking/:id', to: 'admin#block_and_unblock_user', via: [:get, :post]
  get '/logout', to: 'sessions#destroy'
  get 'signout', to: 'sessions#destroy', as: 'signout'
  get '/admin/set-time-expire-job', to: 'admin#set-time-expire-job'
  post '/admin/set-time-expire-job', to: 'admin#set_expire_job_time'
  
  # root to: 'home#index'
end


