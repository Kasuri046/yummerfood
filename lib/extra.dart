//Video 39 / 38

// void main() {
//   Hammad hammad = Hammad();
//   hammad.name = 'Hammad';
//   hammad.displayInfo();
// }
//
// class Hammad {
//   String? name;
//   int? age;
//   String? cnic;
//
//   void displayInfo() {
//     print(name);
//     print(age);
//     print(cnic);
//   }
// }

// void main() {
//
//   Hammad hammad = Hammad();
//   Hammad hammad1 = Hammad();
//
//   hammad.name = 'Hammad';
//   hammad.age = 22;
//   hammad.cnic = '12345';
//
//   hammad1.name = 'Hammad1';
//   hammad1.age = 22;
//   hammad1.cnic = '123456';
//
//
//
//   hammad.displayInfo();
//   hammad1.displayInfo();
// }
//
// class Hammad {
//   String? name;
//   int? age;
//   String? cnic;
//
//   void displayInfo() {
//     print(name);
//     print(age);
//     print(cnic);
//   }
// }

// void main (){
//   Student student1 = Student();
//
//   student1.name = 'Hammad';
//   student1.age = 22;
//   student1.grade = 'A';
//   student1.studentID = 12;
//
//   student1.displayInfo();
//
//   student1.updateGrade('A Plus');
//
// }
// class Student {
//
//   String? name;
//   int? age;
//   String? grade;
//   int? studentID;
//
//   void displayInfo(){
//     print(name);
//     print(age);
//     print(grade);
//     print(studentID);
//   }
//
//   void updateGrade(String newgrade){
//     grade = newgrade;
//     print(newgrade);
//   }
//
// }

//Video 40 Error Handling

// void main (){
//    Area area = Area();
//    // area.width = 5;
//    // area.height = 5;
//    area.calculateRectangeArea();
// }
// class Area{
//
//   double? width;
//   double? height;
//
//   void calculateRectangeArea(){
//     try{
//       double temWidth = width ?? 0;
//       double temHeight = height ?? 0;
//
//       double areaOfRectangle = temHeight * temWidth;
//       // double areaOfRectangle = width! * height!;
//       // double areaOfRectangle = width ?? 0  * (height ?? 0);
//       print(areaOfRectangle);
//     }catch(e){
//       print(e);
//     }
//   }
//
// }

//Constructor Video 41 // O 6

// void main (){
//   Student student = Student('Hammad');
// }
//
// class Student{
//   //Contsructor
//   Student(String name){
//     print('Called');
//     print(name);
//   }
// }

// void main (){
//   Student student = Student('Hammad');
//   Student student1 = Student('Kasuri');
// }
//
// class Student{
//
//   String? name;
//   int? age;
//
//   //Contsructor
//
//   Student(String name){
//     print('Called');
//     this.name = name; //Working on this
//     print(name);
//   }
// }

// void main() {
//
//   // Student student = Student('Muhammad','Kasuri');
//
//   // student.name = 'Hammad';
//   // student.surname = 'Kasuri';
//
//   // student.Hammad();
//
//   //List
//   List<Student> name = [
//     Student('Hammad','Kasuri'),
//     Student('Rafique','Kasuri'),
//     Student('Muhammad','Kasuri')
//   ];
//
//   name.forEach((element){
//     // print(element.name);
//     // print(element.surname);
//     print('${element.name} ${element.surname}');
//   });
//
// }
//
// class Student {
//   String? name;
//   String? surname;
//
//   Student(String name,String surname) {
//     this.name = name;
//     this.surname = surname;
//     // print(name);
//     // print(surname);
//   }
//
//
//   void Hammad() {
//     print(name);
//     print(surname);
//   }
// }

// void main() {
//   Book book  = Book('hammad','hammad');
//   book.DisplayInfo();
// }
//
// class Book {
//   String? title;
//   String? author;
//
//   Book(this.title , this.author){
//     // this.title = title;
//     // this.author = author;
//     // print(title);
//     // print(author);
//   }
//
//   void DisplayInfo(){
//     print(title);
//     print(author);
//   }
//
//   // Book(this.title , this.author , this.isbn , this.isAvailable);
// }


// void main (){
//   Book book1 = Book('1984', 'George Orwell', '1234567890', true);
//   Book book2 = Book('1980','Hammad Kasuri','1234567',true);
//
//   Library library = Library();
//   library.addBook(book1);
//   library.addBook(book2);
// }
//
// class Book {
//   String title;
//   String author;
//   String isbn;
//   bool isAvailable;
//
//   Book(this.title, this.author, this.isbn, this.isAvailable);
//
// }
//
// class Library {
//
//   List<Book> books = [];
//   void addBook(Book book){
//     books.add(book);
//   }
//
//   void listBook(){
//
//   }
//
// }
