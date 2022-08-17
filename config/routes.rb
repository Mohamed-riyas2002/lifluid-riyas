# frozen_string_literal: true

Rails.application.routes.draw do
  get 'search/search_blood_bank'
  get 'blood_bank/register_blood_bank'
  get 'search/search_donor'
  get 'donors/donor_register'
  get 'donors/request_blood'
  get 'users/index'
  get 'blood_bank/requests'
  get 'users/contact'
  match 'donors/claim_request', to: 'donors#claim_request', via: :get
  match 'donors/create_request', to: 'donors#create_request', via: :post
  match 'query_blood_bank', to: 'search#query_blood_bank', via: :get
  match 'query_blood_bank', to: 'search#query_blood_bank', via: :post
  match 'blood_bank/register', to: 'blood_bank#create_blood_bank', via: :post
  match 'search_query', to: 'search#search_query', via: :get
  match '/search_query', to: 'search#search_query', via: :post
  match 'donors/create', to: 'donors#create', via: :post
  match 'login', to: 'users#login', via: :get
  match 'users/register', to: 'users#register', via: :get
  match 'users/create', to: 'users#create', via: :post
  match 'users/validate', to: 'users#validate', via: :post
  match 'users/destroy', to: 'users#destroy', via: :get
  root 'users#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
