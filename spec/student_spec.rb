require './student'

describe Student do
  before :each do
    @student = Student.new 17, 'Francisco'
  end
  describe '#new' do
    it 'Return a new Student object' do
      expect(@student).to be_an_instance_of Student
    end

    it 'Can play hooky' do
      expect(@student.play_hooky).to eq '¯\(ツ)/¯'
    end
  end
end
