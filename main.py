class Library:
    def __init__(self, listOfBooks):
        self.books = listOfBooks

    def displayAvailableBooks(self):
        print("The books present in this library are: ")
        for book in self.books:
            print("\t*" + book)

    def BorrowBook(self,bookName):
        if bookName in self.books:
            print(f"You have been issued {bookName}. Please keep it safe and return it within 30 days.")
            self.books.remove(bookName)
            return True
        else:
            print("Sorry, this book has already been issued to someone else. Please wait till the book is returned")
            return False

    def ReturnBook(self, bookName):
        if bookName!=" ":
          self.books.append(bookName)
        print("Thanks for returning the book on time.")
    

class Student:
    def RequestBook(self):
        self.book = input("Enter the name of the book you wish to borrow: ")
        return self.book

    def ReturnBook(self):
        self.book = input("Enter the name of the book you wish to return: ")
        return self.book

if __name__== "__main__":
    centralLibrary = Library(["Algorithms", "Django","C++","R D Sharma","Wren and Martin","Psychology","Biology"])
    student = Student()
    #centralLibrary.displayAvailableBooks()

    while(True):
        WelcomeMessage = '''\n ******************** WELCOME TO CENTRAL LIBRARY **********************
        Please choose an option
        1. Listing the book
        2. Request a Book
        3. Add/Return a Book
        4. Exit the Library
        '''
        print(WelcomeMessage)
        a = int(input("Enter a choice: "))
        if a == 1:
            centralLibrary.displayAvailableBooks()
        elif a == 2:
            centralLibrary.BorrowBook(student.RequestBook())
        elif a == 3:
            centralLibrary.ReturnBook(student.ReturnBook())
        elif a == 4:
            print("Thanks for choosig Central Library. Have a great day ahead!")
            quit()
        else:
            print("Invalid Choice")
        
        

