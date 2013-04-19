module SweetPortfolio::Routing

  def self.admin(options = {})
    options[:path] ||= 'admin'
    
    Rails.application.routes.draw do
      namespace :admin, :path => options[:path] do
        namespace :gallery do
          resources :galleries do
            put :reorder, :on => :collection
            resources :photos do
              put :reorder, :on => :collection
              get :crop,    :on => :member
            end
          end
        end
      end
    end
  end
  
end