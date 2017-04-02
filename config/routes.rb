Rails.application.routes.draw do
  get 'bmi', to: "bmi#index"
  post 'bmi/result', to: "bmi#result" 
  resources :candidates do
    #member代表candidates底下某一個id可以做的事 這裡是:vote
      member do
        post :vote
      end
    end

  get "/hello_world", to: "pages#hello"
  resources :topics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   
end
