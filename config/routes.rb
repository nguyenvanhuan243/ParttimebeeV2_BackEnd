#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do
  apipie
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :jobs
      resources :users
      get '/users/:id/jobs', to: 'users#get_jobs'
      post '/users/reset-password',to: 'users#send_email_reset_password'
      resources :sessions
      resources :searches
      resources :admins
      resources :feedbacks
    end
  end
  post '/api/v1/users/login' => 'sessions#create'
  get '/api/v1/jobs/:id/increase-view' => 'api/v1/jobs#increase_view'

  resources :user do
    member do
      get :confirm_email
    end
  end
  get '/admin', to: 'admin#manage-jobs-employer'
  get '/admin/import-file', to: 'admin#import-file'
  get '/', to: 'home#index'
  get '/logged', to: 'home#logged'
  get '/login', to: 'login#index'
  get '/forget-password', to: 'login#forget-password'
  get '/search-result-page', to: 'home#search-result-page'
  get '/register', to: 'register#index'
  get '/admin/category-job', to: 'admin#category-job'
  get '/admin/update-profile-special-account', to: 'admin#update-profile-special-account'
  get '/admin/manage-jobs-employer', to: 'admin#manage-jobs-employer'
  get '/admin/manage-jobs-special-account', to: 'admin#job-special-account'
  get '/admin/manage-merge-the-job', to: 'admin#merge-the-job'
  get '/admin/manage-merge-the-job/:id', to: 'admin#details-job'
  get '/admin/delete-job', to: 'admin#delete_job'
  get '/admin/approve', to: 'admin#approve_job'
  match '/admin/update_profile_special_account', to: 'admin#update_profile_special_account', via: [:get, :post]
  match '/admin/update-avatar-special-account', to: 'admin#update_avatar_special_account', via: [:get, :post]
  match '/admin/merge_the_job', to: 'admin#merge_the_job', via: [:get, :post]

# Complete profile user (parttimer and employer)
  get '/complete-profile-parttimer', to: 'home#complete-profile-parttimer'
  get '/complete-profile-employer', to: 'home#complete-profile-employer'
  match '/home/complete_profile_parttimer', to: 'home#complete_profile_parttimer', via: [:get,:post] 
  match '/complete-profile-employer', to: 'home#complete_profile_employer', via: [:get,:post] 
  match '/home/verify_phone_otp', to: 'home#verify_phone_otp', via: [:get,:post] 
  match '/home/load-more', to: 'home#load_more', via: [:get, :post]
  get '/about-us', to: 'home#about-us'
  get 'register-phone-opt', to: 'home#register-phone-opt'
  get '/job-listing/category/:id', to: 'job#search_category'
  get '/employer-login-select', to: 'home#employer-login-select'
  get '/job-listing', to: 'home#job-listing'
  match '/job-listing', to: 'search#search_date', via: [:get,:post] 
  get '/01-all-jobs-listing', to: 'home#01-all-jobs-listing'
  get '/01-all-jobs-listing/cancel-job/:id', to: 'job#cancel_job'
  get '/job-details/:id', to: 'home#job-details'
  match '/worker-apply-job/job-details/:id', to: 'applied#worker_apply_job', via: [:get, :post]
  match '/job-detail/click-favorite-job', to: 'job#click_favorite_job', via: [:get, :post]
  match '/job-detail/click-favorite-job-again', to: 'job#click_favorite_job_again', via: [:get, :post]
  get '/employer-post-job', to: 'home#employer-post-job'
  match '/employer-post-job', to: 'job#post_job_now', via: [:get,:post]
  get 'verify-phone-2tep', to: 'home#verify-phone-2tep'
  match '/verify-phone-2tep', to: 'home#verify_phone', via: [:get,:post]
  get '/post-otp', to: 'home#post-otp'
  get '/employer-register-success', to: 'home#employer-register-success'
  match '/search/search_job_with_state', to: 'search#search_job_with_state', via: [:get,:post]
  get '/admin/blocking-email-list', to: 'admin#blocking-email-list'
  get '/admin/quota-job', to: 'admin#quota'
  match '/admin/blocking-email-list', to: 'admin#add_disposable_email', via: [:get, :post]
  match '/admin/category-job', to: 'admin#add_category_job', via: [:get, :post]
  match '/admin/quota-job', to: 'admin#quota_job', via: [:get, :post]
  match '/admin/category/import-file', to: 'admin#import_job', via: [:get, :post]
  match '/search/category', to: 'search#search_category', via: [:get, :post]
  match '/search/recommended', to: 'search#search_recommended', via: [:get, :post]
  match '/search/state', to: 'search#search_state', via: [:get, :post]
  match '/admin/delete_disposable_email/:id', to: 'admin#delete_disposable_email', via: [:get, :post]
  match '/admin/delete_category_job/:id', to: 'admin#delete_category_job', via: [:get, :post]
  get '/employer/awarded/:id', to: 'home#awarded_job_for_parttimer'
  get '/admin/logout', to: 'adminlogin#logout'
  get '/admin-login/forget-password', to: 'adminlogin#forget-password'
  match '/admin-login/forget-password', to: 'adminlogin#send_mail_reset_password', via: [:get, :post]
  get '/user/forget-password', to: 'login#forget-password'
  match '/user/forget-password', to: 'login#send_mail_reset_password_user', via: [:get, :post]
  get '/admin-login/:id/new-password', to: 'adminlogin#new-password'
  match '/admin-login/:id/new-password', to: 'adminlogin#update_password_reset', via: [:get, :post]
  get '/user/:id/new-password', to: 'login#new-password'
  match '/user/:id/new-password', to: 'login#update_password_reset', via: [:get, :post]
  get '/admin/user-detail', to: 'admin#user-detail'
  get '/admin/user-detail/:id', to: 'admin#profile'
  get '/admin/notification-all-member', to: 'admin#notification-all-member'
  get '/admin/notification-all-member/send-notification', to: 'admin#send-notification'
  match '/admin/notification-all-member/send-notification', to: 'notification#send_notification',via: [:get, :post]
  match '/admin/notification-specify-member/send-notification/:id', to: 'notification#send_notification_member',via: [:get, :post]
  get '/admin/delete-user', to: 'admin#delete-user'
  get '/admin/delele', to: 'admin#delete_user'
  get '/admin/sweet-alert', to: 'admin#sweet-alert'
  get '/worker-profile-popup', to: 'home#worker-profile-popup'
  get '/employer-published-job-applications', to: 'home#employer-published-job-applications'
  get '/worker-profile-full', to: 'home#worker-profile-full'
  match '/register', to: 'register#new', via: [:get, :post]
  get '/05-profile-00-01/:id', to: 'home#05-profile-00-01'
  get '/01-profile-00-full/:id', to: 'home#01-profile-00-full'
  get '/01-all-jobs-listing/published-job/full-profile-parttimer/:id', to: 'home#full-profile-parttimer'
  get 'admin-login', to: 'adminlogin#index'
  match '/admin-login', to: 'adminlogin#admin_login', via: [:get, :post]
  get '/login', to: 'login#index'
  get '/login/new-password', to: 'login#new-password'
  get '/user/:id/new-password', to: 'login#new-password'
  match '/login', to: 'login#user_login', via: [:get, :post]
  get 'admin/blocking', to: 'admin#blocking'
  match '/admin/blocking/:id', to: 'admin#block_and_unblock_user', via: [:get, :post]

  # select user type
  match '/employer-login', to: 'sessions#select_user_type', via: [:get, :post]
  get '/worker-applied-job', to: 'home#worker-applied-job'
  get '/worker-applied-job/load-more-all-jobs', to: 'home#load_more_all_jobs'
  match '/worker-applied-job', to: 'search#search_job', via: [:get, :post]
  get '/employer-profile', to: 'home#employer-profile'

  # Setting profile employer
  get '/settings-profile-employer', to: 'profile#settings-profile-employer'
  get '/settings-profile-parttimer', to: 'profile#settings-profile-parttimer'
  match '/change-password-employer', to: 'profile#change_password', via: [:get, :post]
  get '/edit-profile-employer', to: 'profile#settings-profile-employer'
  match '/edit-profile-employer', to: 'profile#edit_profile', via: [:get, :post]
  match '/edit-profile-parttimer', to: 'home#edit_profile_parttimer', via: [:get, :post]
  get '/logout', to: 'sessions#destroy'
  match '/notification-clicknotify:id', to: 'notification#click_notification', via: [:get, :post]
  get '/draft-job', to: 'home#draft-job'
  get '/published-job', to: 'home#published-job'
  get '/expired-job', to: 'home#expired-job'
  get '/01-all-jobs-listing/published-job/:id', to: 'home#published-job'
  get '/01-all-jobs-listing/draft-job/:id', to: 'home#draft-job'
  get '/01-all-jobs-listing/expired-job/:id', to: 'home#expired-job'
  get '/02-draft-jobs-00-listing', to: 'home#02-draft-jobs-00-listing'
  get '/01-all-jobs-listing/edit-published-job/:id', to: 'home#edit-published-job'
  get '/01-all-jobs-listing/repost-job-expired/:id', to: 'home#edit-published-job'
  get '/01-all-jobs-listing/finish-draft-job/:id', to: 'home#finish-draft-job'
  get '/search-jobs-found', to: 'home#search-jobs-found'
  get '/search-jobs-not-found', to: 'home#search-jobs-not-found'
  match '01-all-jobs-listing/edit-published-job/:id', to: 'job#edit_published_job', via: [:get, :post]
  match '01-all-jobs-listing/repost-job-expired/:id', to: 'job#edit_published_job', via: [:get, :post]
  match '01-all-jobs-listing/finish-draft-job/:id', to: 'job#finish_draft_job', via: [:get, :post]
  match '/active-change-password-employer', to: 'home#active_change_password', via: [:get, :post]
  match 'job-listing/search-full-jobs', to: 'job#search_full_job', via: [:get, :post]

  # Routes for facebook login
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  
  root to: 'home#index'
end


