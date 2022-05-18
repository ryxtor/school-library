require './student'
require './classroom'
describe Student do
  before :each do
    @student = Student.new 17, 'Francisco'
    @classroom = Classroom.new 'Label'
  end
  describe '#new' do
    it 'Return a new Student object' do
      expect(@student).to be_an_instance_of Student
    end

    it 'Can play hooky' do
      expect(@student.play_hooky).to eq '¯\(ツ)/¯'
    end

    it 'should add classroom' do
      @student.add_classroom(@classroom)
      expect(@classroom.students).to eq [@student]
    end
  end
end
