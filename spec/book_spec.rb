require './book'
require './person'
describe Book do
  before :each do
    @book = Book.new 'Title', 'Author'
    @person = Person.new 23, 'Lucas'
    @book.add_rental('2020/02/01', @person, 0, 0)
  end

  describe '#new' do
    it 'returns a new Book object' do
      expect(@book).to be_an_instance_of Book
    end
  end

  it 'should match the title' do
    expect(@book.title).to eq 'Title'
  end

  it 'should match the author' do
    expect(@book.author).to eq 'Author'
  end

  describe '#add_rental' do
    it 'should add a rental' do
      expect(@book.rentals.length).to match 1
    end
  end
end
