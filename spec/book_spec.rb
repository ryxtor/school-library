require './book'
describe Book do
  before :each do
    @book = Book.new 'Title', 'Author'
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
end
