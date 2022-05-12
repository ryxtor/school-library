require './book'
require './inputs'
require './student'
require './teacher'

class App
 include Inputs

  def initialize
    @persons = []
    @books = []
  end

  attr_accessor :persons, :books

  def list_all_books
  end

  def list_all_persons
  end

  def create_student
    name = str_input(message: 'Name:',
                     error: 'Wrong input.')
    age = int_input(message: 'Age:',
                    error: 'Wrong input.')
    student_permission = 'true'
    student_permission = bool_input(message: 'Does the student have permission? (Y/N)') if age < 18
    Student.new(age, name, student_permission)
  end

  def create_teacher
    name = str_input(message: 'Name:',
                     error: 'Wrong input.')
    age = int_input(message: 'Age:',
                    error: 'Wrong input.')
    specialization = str_input(message: 'Specialization:')
    Teacher.new(specialization, age, name)
  end

  def create_person
    loop do
      puts "\n"
      puts 'Do you want to create a student [1] or a teacher [2]? [Input the number]:'
      selection = gets.chomp
      person = nil
      case selection
      when '1'
        person = create_student
      when '2'
        person = create_teacher
      else
        puts 'Wrong value'
      end
      next unless person

      persons << person
      puts 'Person added succesfully'
      break
    end
  end

  def create_book
    title = str_input(message: 'Title:')
    author = str_input(message: 'Author:')
    book = Book.new(title, author)
    @books.push(book)
  end

  def create_rental
  end

  def list_rentals
  end
end