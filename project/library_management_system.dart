void main() {
  Book book1 = Book("KL Ramanuajn", "Key Statics", true, "B001");
  Book book2 = Book("SK Narayan Murti", "Statical Mathematics", true, "B002");
  Member member1 = Member("Sachin Pandit", "M001");
  Member member2 = Member("Amit pandit", 'M002');
  Library library = Library();
  library.addBook(book1);
  library.addBook(book2);
  print("Showing You all Book");
  library.showBooks();

  library.addLoanBooks(book1, member1);
  print("Showing You all Loans Book");

  library.showLoanBooks();
  library.showBooks();
}

class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;
  Book(
    this.author,
    this.title,
    this.isAvailable,
    this.isbn,
  );

  // Book({required this.author, required this.title ,required this.isAvailable,required this.isbn,});
}

class Library {
  List<Book> books = [];
  void addBook(Book book) {
    books.add(book);
  }

  void showBooks() {
    print("Showing all the books");
    for (var book in books) {
      print(
          "author : ${book.author},title : ${book.title},ISBN : ${book.isbn},Available : ${book.isAvailable}");
    }
  }

  List<Loan> loanBooks = [];
  void addLoanBooks(Book book, Member member) {
    if (book.isAvailable) {
      book.isAvailable = false;
      loanBooks.add(Loan(book, member, DateTime.now()));
    }
  }

  void showLoanBooks() {
    for (var loanBook in loanBooks) {
      print(
          "book name => '${loanBook.book.title}',\n book author => '${loanBook.book.author}', \n member name => '${loanBook.member.memberName}'");
    }
  }
}

class Member {
  String memberName;
  String memberId;
  Member(this.memberName, this.memberId);
}

class Loan {
  Book book;
  Member member;
  DateTime loanTime;
  DateTime? returnTime;
  Loan(this.book, this.member, this.loanTime, [this.returnTime]);
  void returnBook() {
    this.returnTime = DateTime.now();
    book.isAvailable = true;
  }
}
