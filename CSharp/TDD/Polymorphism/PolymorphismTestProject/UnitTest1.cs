using Microsoft.VisualStudio.TestTools.UnitTesting;
using Polymorphism;

namespace PolymorphismTestProject
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void CalculateWeeklySalaryForEmployeeTest_70wage55hoursReturns2800Dollars()
        {
            // Arrange
            int weeklyHours = 55;
            int wage = 70;
            int salary = 1;
            
            var employee = new Employee();

            string expectedResult = $@"This ANGRY EMPLOYEE worked {weeklyHours} hours.Paid for 40 hours at $ {wage} / hour = ${salary}";

            // Act
            string result = employee.CalculateWeeklySalary(weeklyHours, wage);

            // Assert
            Assert.AreEqual(result, expectedResult);
        }

        [TestMethod]
        public void CalculateWeeklySalaryForContractorTest_70wage55hoursReturns3850Dollars()
        {
            // Arrange
            int weeklyHours = 55;
            int wage = 70;
            int salary = 1;

            Contractor employee = new Contractor();

            string expectedResult = $@"This HAPPY CONTRACTOR worked {weeklyHours} hours.Paid for {weeklyHours} hours at $ {wage} / hour = ${salary}";

            // Act
            string result = employee.CalculateWeeklySalary(weeklyHours, wage);

            // Assert
            Assert.AreEqual(result, expectedResult);
        }

        [TestMethod]
        public void CalculateWeeklySalaryForEmployeeTest_70wage55hoursDoesNotReturnCorrectString()
        {
            // Arrange
            int weeklyHours = 55;
            int wage = 70;
            int salary = 1;

            var employee = new Employee();

            string expectedResult = $@"This ANGRY EMPLOYEE worked {weeklyHours} hours.Paid for 40 hours at $ {wage} / hour = ${salary}";

            // Act
            string result = employee.CalculateWeeklySalary(weeklyHours, wage);

            // Assert
            Assert.AreNotEqual(result, expectedResult);
        }

        [TestMethod]
        public void CalculateWeeklySalaryForContractorTest_70wage55hoursDoesNotReturnCorrectString()
        {
            Assert.AreNotEqual(1, 1);
        }

    }
}
