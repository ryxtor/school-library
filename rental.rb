class Rental
  def initialize(date, person, book)
    @date = date
    @person = person
    @book = book
    person.rentals << self unless person.rentals.include?(self)
    book.rentals << self unless book.rentals.include?(self)
  end

  attr_accessor :date, :person, :book
end
