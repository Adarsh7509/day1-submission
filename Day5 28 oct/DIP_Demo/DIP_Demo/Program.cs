using DIP_Demo;
using System;

namespace LibraryManagementSystem
{
    class Program
    {
        static void Main(string[] args)
        {
            var userService = new UserService();

            // Student actions
            Console.WriteLine("Student Actions:");
            var student = new Student();
            userService.BorrowBook(student);

            // Teacher actions
            Console.WriteLine("\nTeacher Actions:");
            var teacher = new Teacher();
            userService.BorrowBook(teacher);
            userService.ReserveBook(teacher);

            // Librarian actions
            Console.WriteLine("\nLibrarian Actions:");
            var librarian = new Librarian();
            userService.AddBook(librarian);
            userService.RemoveBook(librarian);

            Console.ReadLine();
        }
    }
}
