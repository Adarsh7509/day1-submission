using DIP_Demo;
using System;

namespace LibraryManagementSystem
{
    public class UserService
    {
        public void BorrowBook(IBorrowable borrowable)
        {
            borrowable.BorrowBook();
        }

        public void ReserveBook(IReservable reservable)
        {
            reservable.ReserveBook();
        }

        public void AddBook( IInventoryManageable inventoryManageable)
        {
            inventoryManageable.AddBook();
        }

        public void RemoveBook(IInventoryManageable inventoryManageable)
        {
            inventoryManageable.RemoveBook();
        }

       
       

        
    }
}
