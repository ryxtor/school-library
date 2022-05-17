class Rental
  def initialize(date, person, book, index_book, index_person)
    @date = date
    @person = person
    @book = book
    @index_book = index_book
    @index_person = index_person
    person.rentals << self unless person.rentals.include?(self)
    book.rentals << self unless book.rentals.include?(self)
  end

  attr_accessor :date, :person, :book, :index_book, :index_person
end
