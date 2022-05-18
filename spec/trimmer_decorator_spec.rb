require './trimmer_decorator'

describe TrimmerDecorator do
  before :each do
    @decorator = TrimmerDecorator.new(Person.new(30, 'maximilliamus'))
  end

  describe '#new' do
    it 'returns a new TrimmerDecorator object' do
      expect(@decorator).to be_an_instance_of TrimmerDecorator
    end
  end

  it 'should trim the name' do
    expect(@decorator.correct_name).to eq 'maximillia'
  end
end
