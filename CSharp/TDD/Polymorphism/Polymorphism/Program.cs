﻿using System;
using System.Collections.Generic;
using System.Reflection.Metadata.Ecma335;
using System.Runtime.CompilerServices;

namespace Polymorphism
{
    internal class Program
    {
        private static void Main(string[] args)
        {
            const int hours = 55;
            const int wage = 70;

            List<Employee> employees = Utils.GetEmployees();

            foreach (var employee in employees)
            {
                employee.CalculateWeeklySalary(hours, wage);
            }
        }

        public static class Utils
        {
            public static List<Employee> GetEmployees()
            {
                var someEmployee = new Employee();
                var someContractor = new Contractor();
                var everyone = new List<Employee> { someEmployee, someContractor };
                return everyone;
            }
        }
    }
}
