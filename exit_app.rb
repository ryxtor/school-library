require 'fileutils'
def exit_app
  files = ['books.json', 'persons.json', 'rentals.json']
    # create method to check if files exists
    #Exists : delete or modify file and write to it
    #Don't exists: create file and write to it
  files.each do |file|
    if File.exist?(file)
      File.delete(file)
      File.new(file, 'w')
    else
      File.new(file, 'w')
    end
  end
    files.each do |file|
    if File.exist?(file)
      File.delete(file)
      File.new(file, 'w')
    else
      File.new(file, 'w')
    end
  end
end