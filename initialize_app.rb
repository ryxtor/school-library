require 'fileutils'
require 'json'
require './app'

def initialize_app(app)
  load_books(app)
  load_people(app)
  load_rentals(app)
end

def load_books(app)
  books_to_create = JSON.parse(File.read('books.json'))
  books_to_create.each do |book|
    existing_book = Book.new(book['Title'], book['Author'], book['Id'])
    app.books.push(existing_book)
  end
end

def load_people(app)
  people_to_create = JSON.parse(File.read('persons.json'))
  people_to_create.each do |person|
    if person.key?('specialization')
      existing_teacher = Teacher.new(person['specialization'],
                                     person['age'],
                                     person['name'],
                                     person['parent_permission'],
                                     person['id'])
      app.persons.push(existing_teacher)
    else
      existing_student = Student.new(person['age'],
                                     person['name'],
                                     person['parent_permission'],
                                     person['id'])
      app.persons.push(existing_student)
    end
  end
end

def load_rentals(app)
  rentals_to_create = JSON.parse(File.read('rentals.json'))
  rentals_to_create.each do |rental|
    renter = app.persons[rental['person']]
    book = app.books[rental['book']]
    existing_rental = Rental.new(rental['date'],
                                 renter,
                                 book,
                                 rental['person'],
                                 rental['book'])
    app.rentals.push(existing_rental)
  end
end
