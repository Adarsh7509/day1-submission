using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FactoryPatternDemo
{
    public interface ICreditCard
    {
        string GetCardType();
        int GetCreditLimit();

        int GetAnnualCharge();
    }
    public class MoneyBack : ICreditCard
    {
        public int GetAnnualCharge()
        {
            return 1200;
        }
        public int GetCreditLimit()
        {
            return 8888;

        }
        public string GetCardType()
        {
            return platinium;
        }
        public class Titanium : ICreditCard
        {

            public int GetAnnualCharge()
            {

                return 1100;
            }
            public string GetName()
            {
            }
        }
    }
}
