Rails.application.routes.draw do
    root 'ctrlcv#main'
    get '/:address', to: 'ctrlcv#open', address: /[A-Za-z0-9]{1,32}/
    get '/:address/:id', to: redirect('/'), :constraints => {:address => /.*/}
    get '/:address', to: redirect('/')
    post '/write/:address', to: 'ctrlcv#write'
end
