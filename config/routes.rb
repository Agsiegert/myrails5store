Rails.application.routes.draw do

  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
          # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Default Scrivito routes. Adapt them to change the routing of CMS objects.
  # See the documentation of 'scrivito_route' for a detailed description.
  scrivito_route '/', using: 'homepage'
  scrivito_route '(/)(*slug-):id', using: 'slug_id'
  mount Spree::Core::Engine, :at => '/'

  Spree::Core::Engine.routes.draw do
    resources :products do
      member do
        post 'create_scrivito_obj'
      end
    end
  end

  scrivito_route '/*permalink', using: 'permalink', format: false
end
