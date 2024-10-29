using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Metadata.Ecma335;
using System.Text;
using System.Threading.Tasks;
using static FactoryPatternDemo.MoneyBack;

namespace FactoryPatternDemo
{
    internal class CreditCardFactory
    {
        public static ICreditCard GetCreditCard(string cardType)
        {
            ICreditCard card = null;
            if (cardType == "MoneyBack")
            {
                card = new MoneyBack();
            }
            else if (cardType == "Platinum")
            {
                card = new Platinum();

            }
            else if (cardType == "Titanium")
            {
                card = new Titanium();
            }

            return card;
        }
        
    }
}
