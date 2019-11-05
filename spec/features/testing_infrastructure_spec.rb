feature 'testing infrastructure' do
    scenario 'Page should be displayed' do
        visit('/')
        expect(page).to have_content 'hello'
    end
end