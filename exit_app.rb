require 'fileutils'
require 'json'

def exit_app(app)
  files = ['books.json', 'persons.json', 'rentals.json']

  files.each do |file|
    File.new(file, 'w') unless File.exist?(file)
  end

  save_books(app)
  save_persons(app)
  save_rentals(app)
end

def create_file(file)
  File.new(file, 'w')
end

def save_books(app)
  booklist = []

  app.books.each do |book|
    b = { Title: book.title, Author: book.author, Id: book.id }
    booklist << b
  end
  File.write('books.json', booklist.to_json)
end

def save_persons(app)
  people = []

  app.persons.each do |person|
    if person.instance_of?(Student)
      s = { age: person.age, name: person.name, parent_permission: person.parent_permission, id: person.id }
      people << s
    else
      t = { specialization: person.specialization, age: person.age, name: person.name,
            parent_permission: person.parent_permission, id: person.id }
      people << t
    end
  end
  File.write('persons.json', people.to_json)
end

def save_rentals(app)
  rentals = []

  app.rentals.each do |rental|
    r = { date: rental.date, person: rental.index_person, book: rental.index_book }
    rentals << r
  end
  File.write('rentals.json', rentals.to_json)
end
