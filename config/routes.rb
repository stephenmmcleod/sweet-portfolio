Rails.application.routes.draw do

  namespace :admin, :path => SweetPortfolio.config.admin_route_prefix do
    namespace :gallery do
      resources :galleries do
        put :reorder, :on => :collection
        resources :photos do
          put :reorder, :on => :collection
          get :crop,    :on => :member
        end
      end
    end
  end unless SweetPortfolio.config.admin_route_prefix.blank?
end
