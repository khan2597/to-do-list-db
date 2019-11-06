feature 'Adding a new todo-item' do
    scenario 'A user can add a new item to the todolist database' do
        visit('/todo-items/new-item')
        fill_in('todo-item', with: 'Write some tests')
        fill_in('deadline', with: '2019-11-10')
        click_button('Submit')

        expect(page).to have_content('Write some tests')
    end
end