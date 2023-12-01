class Author < ApplicationRecord
    has_many :books, before_add: :before_add_association
    # has_many :books, after_add: :after_add_association

    private
    # def before_add_association(book)
    #     book.book_name= book.book_name.upcase
    #     puts "-------------It will executed before association------"
    # end
    # def after_add_association(book)
    #     book.book_name= book.book_name.downcase
    #     puts "-------------It will executed after association------"
    # end


end
