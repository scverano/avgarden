Rails.application.routes.draw do
  root 'static_pages#index'
  
  # Services
  scope path: 'services' do
  	root 'services#index', as: 'services'
  	get 'lawn-care', to: 'services#lawn_care'
    get 'grass-and-hedge-cutting', to: 'services#grass_and_hedge_cutting'
    get 'garden-waste-removal', to: 'services#garden_waste_removal'
    get 'garden-shed-making', to: 'services#garden_shed_making'
    get 'roof-gutter-cleaning', to: 'services#roof_gutter_cleaning'
    get 'garden-maintenance', to: 'services#garden_maintenance'
    get 'fencing-and-fence-painting', to: 'services#fencing_and_fence_painting'
    get 'weeding', to: 'services#weeding'
    get 'planting', to: 'services#planting'
    get 'landscaping', to: 'services#landscaping'
  end

  match 'faq', to: 'static_pages#faq', via: :get
  match 'about', to: 'static_pages#about', via: :get
  match 'contact', to: 'static_pages#contact', via: :get
  match 'our-work', to: 'static_pages#our_work', via: :get

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
end
