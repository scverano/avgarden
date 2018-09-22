Rails.application.routes.draw do
  root 'static_pages#index'
  
  # Services
  scope path: 'services' do
  	root 'services#index', as: 'services'
  	get 'lawn-care', to: 'services#lawn_care'
  end

  match 'faq', to: 'static_pages#faq', via: :get
  match 'about', to: 'static_pages#about', via: :get
  match 'contact', to: 'static_pages#contact', via: :get
  match 'our-work', to: 'static_pages#our_work', via: :get

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
end
