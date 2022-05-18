require './capitalize_decorator'

describe CapitalizeDecorator do
  before :each do
    @decorator = CapitalizeDecorator.new(Person.new(28, 'francisco'))
  end

  describe '#new' do
    it 'returns a new CapitalizeDecorator object' do
      expect(@decorator).to be_an_instance_of CapitalizeDecorator
    end
  end

  it 'should capitalize the name' do
    expect(@decorator.correct_name).to eq 'Francisco'
  end
end