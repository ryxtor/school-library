require './rental'

describe Rental do
  before :each do
    @student = Student.new 'Name', 'Age'
    @book = Book.new 'Title', 'Author'
    @rental = Rental.new '2020-01-01', @student, @book, 1, 1
  end

  describe '#new' do
    it 'returns a new Rental object' do
      expect(@rental).to be_an_instance_of Rental
    end
  end

  it 'should match the index_person' do
    expect(@rental.index_person).to eq 1
  end

  it 'should match the index_book' do
    expect(@rental.index_book).to eq 1
  end

  it 'should match the date' do
    expect(@rental.date).to eq '2020-01-01'
  end
end