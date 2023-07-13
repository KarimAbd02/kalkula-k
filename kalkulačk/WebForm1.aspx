<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="kalkulačk.WebForm1" %>

<!DOCTYPE html>
<html>
<head>
    <title>Калькулятор</title>
    <style>
        .container {
        display: flex;
        }
        .calculator {
            width: 500px;
            border: 1px solid #ccc;
            padding: 0px;
        }
        .calculator input[type="text"] {
            width: 97%;
            margin-bottom: 10px;
            height: 40px;
            font-size: 18px;
            text-align: right;
            border: 5px solid black;
            background-color: #cde0a2;
        }
        .calculator .row {
            display: flex;
        }
        .calculator .row input[type="button"] {
            flex: 1;
            margin: 2px;
            font-size: 18px;
            height: 35px;
            
        }
         .calculator .row .bl-button {
            background-color: #5bc0de;
            color: white;
        }
         .calculator .row .blue-button {
            background-color: #337ab7;
            color: white;
        }
         .calculator .row .red-button {
            background-color: red;
            color: white;
            width:100%;
            height: 35px;
        }
        
        .history {
         margin-left: 10px;
        Width:auto;
        overflow-y: auto;
        white-space: nowrap;
        border: none;
        }
        .history select {
         overflow: visible;
         white-space: nowrap;
         width: 100%;
         border: none;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
        <div class="calculator">
            <asp:TextBox ID="txtResult" runat="server"></asp:TextBox>
            <div class="row">
                <input type="button" value="7" onclick="txtResult.value += '7';" />
                <input type="button" value="8" onclick="txtResult.value += '8';" />
                <input type="button" value="9" onclick="txtResult.value += '9';" />
                <input type="button" class="blue-button" value="/" onclick="txtResult.value += '/';" />
            </div>
            <div class="row">
                <input type="button" value="4" onclick="txtResult.value += '4';" />
                <input type="button" value="5" onclick="txtResult.value += '5';" />
                <input type="button" value="6" onclick="txtResult.value += '6';" />
                <input type="button" class="blue-button" value="*" onclick="txtResult.value += '*';" />
            </div>
            <div class="row">
                <input type="button" value="1" onclick="txtResult.value += '1';" />
                <input type="button" value="2" onclick="txtResult.value += '2';" />
                <input type="button" value="3" onclick="txtResult.value += '3';" />
                <input type="button" class="blue-button" value="-" onclick="txtResult.value += '-';" />
            </div>
            <div class="row">
                <input type="button" value="0" onclick="txtResult.value += '0';" />
                <input type="button" value="." onclick="txtResult.value += '.';" />
                <input type="button" class="bl-button" value="C" onclick="txtResult.value = '';" />
                <input type="button" class="blue-button" value="+" onclick="txtResult.value += '+';" />
            </div>
             <div class="row">
                 <asp:Button ID="btnCalculate" runat="server" class="red-button" Text="Spočitat"  OnClick="btnCalculate_Click" />
            </div>
        </div>
             
        <div class="history">
            <p>Historie:</p>
            <asp:ListBox ID="historyList" runat="server"  Height="200px"></asp:ListBox>
        </div>
            </div>
    </form>
</body>
</html> 