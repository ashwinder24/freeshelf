Rails.application.routes.draw do
#  get 'access/index'

  get 'admin', :to => 'access#index'

#  get 'books/index' simple/match route which need to be specific
    
#    default route
    match ':controller(/:action(/:id))', :via => [:get, :post]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
