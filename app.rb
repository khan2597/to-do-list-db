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

    post '/todo-items' do
        todo-item = params['todo-item']
        deadline = params['deadline']
        connection = PG.connect(dbname: 'todo_test')
        connection.exec("ISERT INTO todolist_table (todo_item) VALUES('#{todo-item}') (deadline) VALUES('#{deadline}')")
        redirect '/todo-items'
    end

    get '/todo-items/new' do
        erb :"/todo-items/new-item"
    end

end