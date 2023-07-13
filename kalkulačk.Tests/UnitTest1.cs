using Microsoft.VisualStudio.TestTools.UnitTesting;
using kalkulačk;

namespace CalculatorTests
{
    [TestClass]
    public class CalculatorTests
    {
        [TestMethod]
        public void TestAddition()
        {
            WebForm1 calculator = new WebForm1();
         //   string result = calculator.CalculateExpression("2+3"); //v beh-kodu vyměnit na publ
          //  Assert.AreEqual("5", result);
        }

        [TestMethod]
        public void TestSubtraction()
        {
        
            WebForm1 calculator = new WebForm1();
          //  string result = calculator.CalculateExpression("6-4");
          //  Assert.AreEqual("2", result);
        }

        [TestMethod]
        public void TestMultiplication()
        {
            
            WebForm1 calculator = new WebForm1();
         //   string result = calculator.CalculateExpression("5*4");
         //   Assert.AreEqual("20", result);
        }

        [TestMethod]
        public void TestDivision()
        {
          
            WebForm1 calculator = new WebForm1();  
          //  string result = calculator.CalculateExpression("10/2"); 
        //    Assert.AreEqual("5", result);
        }

        [TestMethod]
        public void TestComplexExpression()
        {

            WebForm1 calculator = new WebForm1();
          //  string result = calculator.CalculateExpression("2+3*4-6/2");
        //    Assert.AreEqual("11", result);
        }
    }
}

