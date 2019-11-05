feature 'Viewing todo items' do
    scenario 'visiting index page' do
        connection = PG.connect(dbname: 'todo_test')

        connection.exec("INSERT INTO todolist_test_table VALUES(1, 'Go to the shops', 2019-11-12)")
        connection.exec("INSERT INTO todolist_test_table VALUES(1, 'Go to the petrol station', 2019-11-13)")
        connection.exec("INSERT INTO todolist_test_table VALUES(1, 'Go home', 2019-11-13)")

        visit('/todo-items')

        expect(page).to have_content 'Go to the shops'
        expect(page).to have_content 'Go to the petrol station'
        expect(page).to have_content 'Go home'
    end
end