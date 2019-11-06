require 'sinatra/base'
require './lib/todo'

class TodoListManager < Sinatra::Base
    get '/' do
        'hello world'
    end

    get '/todo-items' do
        @todo = Todo.all
        erb :"/todo-items/items"
    end

    get '/todo-items/new' do
        erb :"/todo-items/new-item"
    end

end