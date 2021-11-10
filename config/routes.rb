Rails.application.routes.draw do
  root 'users#index'

  resources :users

  get :send_report_mail, to: 'users#send_report_mail', as: :send_report_mail
end
