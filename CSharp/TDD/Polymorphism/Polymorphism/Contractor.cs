using System;
using System.Collections.Generic;
using System.Text;

namespace Polymorphism
{
    public class Contractor : Employee
    {
        public override string CalculateWeeklySalary(int weeklyHours, int wage)
        {
            var salary = weeklyHours * wage;
            string result = $@"This HAPPY CONTRACTOR worked {weeklyHours} hours.Paid for {weeklyHours} hours at $ {wage} / hour = ${salary}";

            Console.WriteLine($"\n{result}\n");
            Console.WriteLine("----------------------------------");
            return result;
        }
    }
}
