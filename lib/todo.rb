require 'pg'

class Todo
    def self.all
        if ENV['RACK_ENV'] == 'test'
            connection = PG.connect(dbname: 'todo_test')
        else
            connection = PG.connect(dbname: 'to-do-list_database')
        end

        result = connection.exec("SELECT * FROM todolist_table")
        result.map { |todo| todo['todo_item'] }
    end
end