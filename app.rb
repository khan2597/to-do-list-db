require 'sinatra/base'
require './lib/todo'

class TodoListManager < Sinatra::Base
    get '/' do
        'hello world'
    end

    get '/todo-items' do
        @todos = Todo.all
        erb :"/todo-items/items"
    end

    post '/todo-items' do
        todo_item = params['todo-item']
        deadline = params['deadline']
        connection = PG.connect(dbname: 'todo_test')
        connection.exec("INSERT INTO todolist_table (todo_item, deadline) VALUES('#{todo_item}', '#{deadline}') RETURNING id, todo_item, deadline")
        redirect '/todo-items'
    end

    get '/todo-items/new' do
        erb :"/todo-items/new-item"
    end

    run! if app_file == $0
end