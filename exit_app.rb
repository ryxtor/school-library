require 'fileutils'
require 'json'

def exit_app(app)
  files = ['books.json', 'persons.json', 'rentals.json']
  booklist = []
  # create method to check if files exists
  # Exists : delete or modify file and write to it
  # Don't exists: create file and write to it
  files.each do |file|
    File.new(file, 'w') unless File.exist?(file)
  end
  app.books.each do |book|
    b = { Title: book.title, Author: book.author, Id: book.id }
    booklist << b
  end
  File.write('books.json', booklist.to_json)
end

def create_file(file)
  File.new(file, 'w')
end
