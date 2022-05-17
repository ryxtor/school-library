require './book'
require './inputs'
require './student'
require './teacher'
require './rental'

class App
  include Inputs

  def initialize
    @persons = []
    @books = []
    @rentals = []
  end

  attr_accessor :persons, :books, :rentals

  def list_all_books
    puts "\n"
    books.each_with_index do |book, index|
      puts "[#{index + 1}] Title: #{book.title}, Author: #{book.author}"
    end
  end

  def list_all_persons
    persons.each_with_index do |person, index|
      puts "[#{index + 1}][#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
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
      selection = int_input
      person = nil
      case selection
      when 1
        person = create_student
      when 2
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
    books.push(book)
  end

  def create_rental
    puts "\n"
    if books.empty? || persons.empty?
      puts 'Not enough parameters to create rental'
      return
    end
    list_all_books
    index_book = index_in(books, message: 'Select a book from the following list by number')
    book = books[index_book]
    list_all_persons
    index_persons = index_in(persons, message: 'Select a person from the following list by number (not id)')
    person = persons[index_persons]
    date = enter_date
    rental = Rental.new(date, person, book, index_book, index_persons)
    rentals.push(rental)
  end

  def list_rentals
    list_all_persons
    loop do
      id = int_input(message: 'ID of person:')
      selected_person = nil
      persons.each do |person|
        if person.id == id
          selected_person = person
          break
        end
      end
      unless selected_person
        puts "Couldn't find ID. Try again"
        next
      end
      puts 'Rentals:'
      selected_person.rentals.each do |rent|
        puts "Date: #{rent.date} Book \"#{rent.book.title}\" by #{rent.book.author}"
      end
      break
    end
  end
end
