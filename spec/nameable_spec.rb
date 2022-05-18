require './nameable'

describe Nameable do
  before :each do
    @nameable = Nameable.new
  end

  describe '#new' do
    it 'returns a new Nameable object' do
      expect(@nameable).to be_an_instance_of Nameable
    end

    it 'should raise error' do
      expect { Nameable.new.correct_name }.to raise_error(NotImplementedError)
    end
  end
end
