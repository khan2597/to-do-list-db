require 'sinatra/base'

class TodoListManager < Sinatra::Base
    get '/' do
        'hello world'
    end

    get '/todo-items/items' do
        @todo = Todo.all
        erb :"/todo-items/items"
    end

end