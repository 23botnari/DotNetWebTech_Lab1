<%@ Page Title="Calculator" Language="C#"  AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="CalculatorTW1.Calculator" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator</title>
   
        <link rel="stylesheet" type="text/css" href="calculator.css">

    <script>
        document.addEventListener('DOMContentLoaded', (event) => {
            document.addEventListener('keydown', function(event) {
                const key = event.key;
                const buttonMap = {
                    '0': 'Zero',
                    '1': 'One',
                    '2': 'Two',
                    '3': 'Three',
                    '4': 'Four',
                    '5': 'Five',
                    '6': 'Six',
                    '7': 'Seven',
                    '8': 'Eight',
                    '9': 'Nine',
                    '.': 'Dot',
                    '+': 'Add',
                    '-': 'Subtract',
                    '*': 'Multiply',
                    '/': 'Divide',
                    'Enter': 'Equals',
                    '=': 'Equals',
                    'Escape': 'Clear',
                    'Backspace':'Clear'
                };

                if (buttonMap[key]) {
                    document.getElementById(buttonMap[key]).click();
                }
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">

    <h1 class="calculator-title">Calculatorul Restantierului</h1> 
        <div class="calculator">
            <asp:TextBox ID="Display" runat="server" CssClass="display" ReadOnly="true"></asp:TextBox>
            <asp:Button ID="SquareRoot" runat="server" Text="√" CssClass="square-root" OnClick="SquareRoot_Click" />
            <asp:Button ID="Log" runat="server" Text="log" CssClass="log" OnClick="Log_Click" />
            <asp:Button ID="Ln" runat="server" Text="ln" CssClass="ln" OnClick="Ln_Click" />
            <asp:Button ID="Factorial" runat="server" Text="n!" CssClass="factorial" OnClick="Factorial_Click" />
            <asp:Button ID="Seven" runat="server" Text="7" CssClass="seven" OnClick="Number_Click" />
            <asp:Button ID="Eight" runat="server" Text="8" CssClass="eight" OnClick="Number_Click" />
            <asp:Button ID="Nine" runat="server" Text="9" CssClass="nine" OnClick="Number_Click" />
            <asp:Button ID="Divide" runat="server" Text="/" CssClass="divide" OnClick="Operator_Click" />
            <asp:Button ID="Four" runat="server" Text="4" CssClass="four" OnClick="Number_Click" />
            <asp:Button ID="Five" runat="server" Text="5" CssClass="five" OnClick="Number_Click" />
            <asp:Button ID="Six" runat="server" Text="6" CssClass="six" OnClick="Number_Click" />
            <asp:Button ID="Multiply" runat="server" Text="*" CssClass="multiply" OnClick="Operator_Click" />
            <asp:Button ID="One" runat="server" Text="1" CssClass="one" OnClick="Number_Click" />
            <asp:Button ID="Two" runat="server" Text="2" CssClass="two" OnClick="Number_Click" />
            <asp:Button ID="Three" runat="server" Text="3" CssClass="three" OnClick="Number_Click" />
            <asp:Button ID="Subtract" runat="server" Text="-" CssClass="subtract" OnClick="Operator_Click" />
            <asp:Button ID="ToggleSign" runat="server" Text="+/-" CssClass="toggle-sign" OnClick="ToggleSign_Click" />
            <asp:Button ID="Zero" runat="server" Text="0" CssClass="zero" OnClick="Number_Click" />
            <asp:Button ID="Dot" runat="server" Text="." CssClass="dot" OnClick="Dot_Click" />
            <asp:Button ID="Add" runat="server" Text="+" CssClass="add" OnClick="Operator_Click" />
            <asp:Button ID="Clear" runat="server" Text="C" CssClass="clear" OnClick="Clear_Click" />
            <asp:Button ID="Equals" runat="server" Text="=" CssClass="equals" OnClick="Equals_Click" />
        </div>
    </form>
</body>
</html>
