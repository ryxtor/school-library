require './person'

describe Person do
  before :each do
    @book = Book.new 'Title', 'Author'
    @person = Person.new 20, 'Lucas'
    @person.add_rental('2020/02/01', @book, 0, 0)
  end

  describe '#new' do
    it 'Returns a new Person object' do
      expect(@person).to be_an_instance_of Person
    end

    it 'Check if it is of age' do
      expect(@person.of_age?).to be true
    end

    it 'Check if the correct name is the same as name' do
      expect(@person.correct_name).to eq 'Lucas'
    end

    it 'Check if can use services' do
      expect(@person.can_use_services?).to be true
    end
  end

  describe '#add_rental' do
    it 'should add a rental' do
      expect(@person.rentals.length).to match 1
    end
  end
end
