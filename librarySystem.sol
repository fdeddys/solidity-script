// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract librarySystem {

    struct Author {
        string name;
        uint age;
    }

    struct Book {
        string title;
        Author author;
        bool isAvailable;
    }

    Book[] public books;

    function addBook(string memory _title, string memory _name, uint _age)  public {
        books.push(Book(_title, Author(_name, _age), true));
    }

    function getBook(uint index) public view returns(string memory, string memory, uint , bool) {
        require(index < books.length, "Index out of bond");
        Book memory book = books[index];
        return (book.title, book.author.name, book.author.age, book.isAvailable);
    }

    function borrowBook(uint index) public {
        require(index < books.length, "Index out of bond");
        require(books[index].isAvailable , "book not avail");
        books[index].isAvailable = false;
    }

}
