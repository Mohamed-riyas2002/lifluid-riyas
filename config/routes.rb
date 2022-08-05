Rails.application.routes.draw do
  get 'blood_bank/register_blood_bank'
  get 'search/search_donor'
  get 'donors/donor_register'
  get 'users/index'
  match 'blood_bank/register', to: 'blood_bank#create_blood_bank',via: :post
  match 'search_query', to: 'search#search_query', via: :get
  match '/search_query', to: 'search#search_query', via: :post
  match 'donors/create', to: 'donors#create', via: :post
  match 'login',to:'users#login', via: :get
  match 'users/register', to: 'users#register', via: :get
  match 'users/create', to: 'users#create', via: :post
  match 'users/validate', to: 'users#validate', via: :post
  match 'users/destroy', to: 'users#destroy', via: :get
  root 'users#index'








  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
