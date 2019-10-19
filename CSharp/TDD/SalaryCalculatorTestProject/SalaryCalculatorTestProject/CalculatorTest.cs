using Calculator;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SalaryCalculatorTestProject
{

    /*
        To get hourly, divide annual salary by 2080
        $100,006.40 yearly / 2080 hours = $48.08 per hour
        To get annual, multiply hourly by 2080
        $ 48.08 * 2080 = $100,006.40
     */

    [TestClass]
    public class CalculatorTests
    {
        [TestMethod]
        public void AnnualSalaryTest()
        {
            // Arrange
            SalaryCalculator calculator = new SalaryCalculator();

            // Act
            decimal annualSalary = calculator.GetAnnualSalary(50);

            // Assert
            Assert.AreEqual(104000, annualSalary);
        }

        [TestMethod]
        public void HourlyWageTest()
        {
            // Arrange
            SalaryCalculator calculator = new SalaryCalculator();

            // Act
            decimal hourlyWage = calculator.GetHourlyWage(52000);

            // Assert
            Assert.AreEqual(25, hourlyWage);
        }

    }


}
