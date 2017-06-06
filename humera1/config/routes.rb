Rails.application.routes.draw do
scope '/process' do  resources :url_caps
end
 # get 'rest_controller/putmethod'

#  get 'humeracontroller/testmethod'

# get 'humeracontroller/getUrlDetails'

#  get 'humeracontroller/getAllLinks'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
