require 'pg'

def setup_test_database
    connection = PG.connect(dbname: 'todo_test')
    connection.exec("TRUNCATE todolist_table;")
end