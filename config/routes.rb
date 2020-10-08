Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do 
      resources :champions #esto accede a /api/v1/champions
    end
  end
end
