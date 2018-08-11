Rails.application.routes.draw do
  root 'static_pages#index'
  match 'services', to: 'static_pages#services', via: :get
  match 'faq', to: 'static_pages#faq', via: :get
  match 'about', to: 'static_pages#about', via: :get
end
