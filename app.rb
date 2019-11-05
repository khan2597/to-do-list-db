require 'sinatra/base'

class TodoListManager < Sinatra::Base
    get '/' do
        'hello world'
    end
end