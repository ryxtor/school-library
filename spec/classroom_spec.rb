require './classroom'
require './student'

describe Classroom do
  before :each do
    @classroom = Classroom.new 'Label'
    @student = Student.new 17, 'Francisco'
  end

  describe '#new' do
    it 'returns a new Classroom object' do
      expect(@classroom).to be_an_instance_of Classroom
    end
  end

  it 'should not have any students' do
    expect(@classroom.students).to be_empty
  end

  it 'should add a student' do
    @classroom.add_student(@student)
    expect(@classroom.students).to eq [@student]
  end
end
