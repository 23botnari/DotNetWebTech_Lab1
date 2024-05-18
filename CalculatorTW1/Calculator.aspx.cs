using System;
using System.Web.UI.WebControls;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Linq;

namespace CalculatorTW1
{
    public partial class Calculator : Page
    {
        private static double memory = 0;
        private static List<double> operands = new List<double>();
        private static List<string> operators = new List<string>();
        private static bool operatorClicked = false;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Number_Click(object sender, EventArgs e)
        {
            if (operatorClicked)
            {
                Display.Text = "";
                operatorClicked = false;
            }
            var button = (Button)sender;
            if (Display.Text == "0" && button.Text != ".")
            {
                Display.Text = button.Text;
            }
            else
            {
                Display.Text += button.Text;
            }
        }

        protected void Operator_Click(object sender, EventArgs e)
        {
            var button = (Button)sender;
            if (Display.Text != "")
            {
                operands.Add(double.Parse(Display.Text));
                operators.Add(button.Text);
                operatorClicked = true;
            }
        }

        protected void Equals_Click(object sender, EventArgs e)
        {
            if (Display.Text != "")
            {
                operands.Add(double.Parse(Display.Text));
            }
            double result = operands[0];
            for (int i = 1; i < operands.Count; i++)
            {
                switch (operators[i - 1])
                {
                    case "+":
                        result += operands[i];
                        break;
                    case "-":
                        result -= operands[i];
                        break;
                    case "*":
                        result *= operands[i];
                        break;
                    case "/":
                        result /= operands[i];
                        break;
                }
            }
            Display.Text = result.ToString();
            operands.Clear();
            operators.Clear();
            operatorClicked = true;
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            Display.Text = "0";
            operands.Clear();
            operators.Clear();
            operatorClicked = false;
        }

        protected void Dot_Click(object sender, EventArgs e)
        {
            if (!Display.Text.Contains("."))
            {
                Display.Text += ".";
            }
        }

        protected void SquareRoot_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Display.Text))
            {
                double number = double.Parse(Display.Text);
                if (number >= 0)
                {
                    Display.Text = Math.Sqrt(number).ToString();
                }
                else
                {
                    Display.Text = "Error";
                }
            }
        }

        protected void Log_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Display.Text))
            {
                double number = double.Parse(Display.Text);
                if (number > 0)
                {
                    Display.Text = Math.Log10(number).ToString();
                }
                else
                {
                    Display.Text = "Error";
                }
            }
        }

        protected void Ln_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Display.Text))
            {
                double number = double.Parse(Display.Text);
                if (number > 0)
                {
                    Display.Text = Math.Log(number).ToString();
                }
                else
                {
                    Display.Text = "Error";
                }
            }
        }

        protected void Factorial_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Display.Text))
            {
                int number = int.Parse(Display.Text);
                if (number >= 0)
                {
                    long result = 1;
                    for (int i = 2; i <= number; i++)
                    {
                        result *= i;
                    }
                    Display.Text = result.ToString();
                }
                else
                {
                    Display.Text = "Error";
                }
            }
        }

        protected void ToggleSign_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Display.Text) && Display.Text != "0")
            {
                double number = double.Parse(Display.Text);
                Display.Text = (-number).ToString();
            }
        }


    }
}
