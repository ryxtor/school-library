require './classroom'

describe Classroom do

  before :each do
    @classroom = Classroom.new "Label"
  end

  describe "#new" do
    it "returns a new Classroom object" do
      expect(@classroom).to be_an_instance_of Classroom
    end
  end

  it "should not have any students" do
    expect(@classroom.students).to be_empty
  end
end