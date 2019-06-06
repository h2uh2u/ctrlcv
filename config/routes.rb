Rails.application.routes.draw do
    root 'home#main'
    get '/:address', to: 'home#url', address: /[A-Za-z0-9]{1,32}/
    get '/:address', to: redirect('/')
    post '/write/:address', to: 'home#write'
end
