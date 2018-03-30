Rails.application.routes.draw do
  namespace 'api' do
  	namespace 'v1' do
  		resources :citzens

		get '/inform_mutation/:id/:mutation', to: 'citzens#inform_mutation'
		get '/percentage_of_infected', to: 'report#percentage_of_infected'

  	end
  end
end
