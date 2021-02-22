require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :session_secret, "754c100dc8bdbbc1ee18d3c3dcf3cc336a0307b15dff73f315fc571962e19ba9462a327bee8db2bf665dca8a70a46a19c4222d75cf85ec9f197f553cf4e52161"
      end 

    get '/' do
        
        erb :index

    end

    post '/checkout' do
        @session = session
        item = params["item"]
        @session[:item] = item
    end



end