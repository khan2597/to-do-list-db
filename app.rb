require 'sinatra/base'

class TodoListManager < Sinatra::Base
    get '/' do
        'hello world'
    end

    get '/todo-items' do
        
    end

end