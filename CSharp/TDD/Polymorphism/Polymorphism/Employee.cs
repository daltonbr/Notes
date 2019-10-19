using System;
using System.Collections.Generic;
using System.Text;

namespace Polymorphism
{
    public class Employee
    {
        public virtual string CalculateWeeklySalary(int weeklyHours, int wage)
        {
            var salary = 40 * wage;
            string result = $@"This ANGRY EMPLOYEE worked {weeklyHours} hours.Paid for 40 hours at $ {wage} / hour = ${salary}";

            Console.WriteLine($"\n{result}\n");
            Console.WriteLine("----------------------------------");
            return result;
        }
    }
}
