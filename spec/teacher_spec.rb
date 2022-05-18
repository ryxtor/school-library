require './teacher'

describe Teacher do
  before :each do
    @teacher = Teacher.new 'Maths', 34, 'Kenny', 'false'
  end
  describe '#new' do
    it 'Return a new Teacher object' do
      expect(@teacher).to be_an_instance_of Teacher
    end

    it 'Has the same specialization' do
      expect(@teacher.specialization).to eq 'Maths'
    end

    it 'Can always use services' do
      expect(@teacher.can_use_services?).to be true
    end
  end
end
