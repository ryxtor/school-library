require './decorator'
require './nameable'
describe Decorator do
  before :each do
    @decorator = Decorator.new(Nameable.new)
  end

  describe '#new' do
    it 'returns a new Decorator object' do
      expect(@decorator).to be_an_instance_of Decorator
    end
  end
end
