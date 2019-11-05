require 'todo'

describe Todo do
    it 'creates an instance of the todo class' do
        expect(subject).to be_an_instance_of(Todo)
    end
end