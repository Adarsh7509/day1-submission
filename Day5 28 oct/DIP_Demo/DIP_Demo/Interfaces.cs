using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DIP_Demo
{
    // Base interface for borrowing books
    public interface IBorrowable
    {
        void BorrowBook();
    }

    // Interface for reserving books
    public interface IReservable
    {
        void ReserveBook();
    }

    // Interface for managing book inventory
    public interface IInventoryManageable
    {
        void AddBook();
        void RemoveBook();
    }
}
