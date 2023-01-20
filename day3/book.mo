module Book {
    public type Book = {
        title : Text;
        pages : Nat;
    };

    public func create_book(title : Text, pages : Nat) : Book {
        let newBook : Book = { title = title; pages = pages };
        return newBook;
    };
};
