require 'fileutils'
require 'json'
require './app'

def initialize_app(app)
  books_to_create = JSON.parse(File.read('books.json'))
  books_to_create.each do |book|
    existing_book = Book.new(book["Title"], book["Author"], book["Id"])
    app.books.push(existing_book)
  end
end