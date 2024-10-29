using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DIP_Demo
{
    public class Student : IBorrowable
    {
        public void BorrowBook()
        {
            Console.WriteLine("Student borrowed a book.");
        }

        
    }

    public class Teacher : IBorrowable, IReservable
    {
        public void BorrowBook()
        {
            Console.WriteLine("Teacher borrowed a book.");
        }

        

        public void ReserveBook()
        {
            Console.WriteLine("Teacher reserved a book.");
        }
    }

    public class Librarian : IInventoryManageable
    {
        public void AddBook()
        {
            Console.WriteLine("Librarian added a book to the inventory.");
        }

       

        public void RemoveBook()
        {
            Console.WriteLine("Librarian removed a book from the inventory.");
        }
    }
}
