require 'yaml'

class Library
  attr_accessor :books

  def initialize(lib_file: false)
    @lib_file = lib_file
    @books = @lib_file ? YAML.safe_load(File.read(@lib_file)) : []
  end

  def get_books_in_category(category)
    @books.select do |book|
      book.category == category
    end
  end

  def add_book(book)
    @books.push book
  end

  def get_book(title)
    @books.select do |book|
      book.title == title
    end.first
  end

  def save(lib_file: false)
    @lib_file = lib_file || @lib_file || 'library.yml'
    File.write(@lib_file, YAML.dump @books)
  end
end
