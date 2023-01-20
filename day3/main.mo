import Utils "./utils";
import Book "./book";
import List "mo:base/List";

actor {
    var bookList = List.nil<Book.Book>();
    public func add_book(book : Book.Book) : async () {
        bookList := List.push<Book.Book>(book, bookList);
    };
    public query func get_books() : async [Book.Book] {
        let ret = List.toArray(bookList);
        return ret;
    };
};
