# config/routes.rb
Rails.application.routes.draw do
<<<<<<< HEAD

  scope module: :v2, constraints: ApiVersion.new('v2') do
    resources :todos, only: :index
  end

  scope module: :v1, constraints: ApiVersion.new('v1', true) do
   resources :todos do
     resources :items
   end
   
=======
  resources :todos do
    resources :items
>>>>>>> parent of e4ab49b... VErsioning v1
  end
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
