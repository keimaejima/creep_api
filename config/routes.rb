Rails.application.routes.draw do
  #mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  namespace :api do
    # localhost:3000/api/v1/auth に認証API
    mount_devise_token_auth_for 'User', at: '/v1/auth'

    mount API::Root => '/' 

  end
end
