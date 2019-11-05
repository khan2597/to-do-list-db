require 'todo'

describe Todo do
    it 'creates an instance of the todo class' do
        expect(subject).to be_an_instance_of(Todo)
    end

    it 'returns the list of todo-items' do
        connection = PG.connect(dbname: 'todo_test')

        connection.exec("INSERT INTO todolist_test_table VALUES(1, 'Go to the shops', '2019-11-12')")
        connection.exec("INSERT INTO todolist_test_table VALUES(2, 'Go to the petrol station', '2019-11-13')")
        connection.exec("INSERT INTO todolist_test_table VALUES(3, 'Go home', '2019-11-13')")

        todo = Todo.all

        expect(todolist_test_table).to have_content 'Go to the shops'
        expect(todolist_test_table).to have_content 'Go to the petrol station'
        expect(todolist_test_table).to have_content 'Go home'        
    end
end