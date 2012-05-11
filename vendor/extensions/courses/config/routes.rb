Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :courses do
    resources :courses, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :courses, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :courses, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
