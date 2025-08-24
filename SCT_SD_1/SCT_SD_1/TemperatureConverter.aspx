<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TemperatureConverter.aspx.cs" Inherits="TempConverter.TemperatureConverter" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>🌡️ Temperature Converter</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(120deg, #74ebd5, #9face6);
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .container {
            background: #fffffffa;
            padding: 38px 40px 32px 40px;
            width: 410px;
            text-align: center;
            border-radius: 18px;
            box-shadow: 0 8px 32px rgba(0,0,0,0.18);
            animation: fadeIn 0.8s ease-in-out;
        }
        h2 {
            color: #5c27ae;
            margin-bottom: 18px;
            font-weight: 700;
            font-size: 26px;
            letter-spacing: 1px;
        }
        .input-box, select {
            width: 95%;
            padding: 12px;
            margin-bottom: 16px;
            border-radius: 8px;
            border: 1px solid #cfcfcf;
            outline: none;
            font-size: 16px;
            transition: border-color 0.25s;
        }
        .input-box:focus, select:focus {
            border-color: #8752c7;
            box-shadow: 0 0 5px rgba(98, 0, 234, 0.09);
        }
        .btn {
            margin-top: 6px;
            margin-bottom: 16px;
            width: 95%;
            background: linear-gradient(90deg, #854FF8 40%, #9d46ff 100%);
            color: #fff;
            font-weight: 600;
            padding: 12px 0;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            transition: background 0.25s, transform 0.2s;
            box-shadow: 0 3px 12px rgba(80,80,110,0.08);
        }
        .btn:hover {
            background: linear-gradient(90deg, #a684eb 40%, #854FF8 100%);
            transform: scale(1.03);
        }
        .result-container {
            margin-top: 15px;
            width: 95%;
            margin-left: auto;
            margin-right: auto;
        }
        .result {
            font-size: 17px;
            color: #004d40;
            background: #e7f7fa;
            padding: 16px 12px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.04);
            animation: slideUp 0.5s ease-in-out;
            display: block;
            min-height: 40px;
            line-height: 1.8;
            text-align: left;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: scale(0.94); }
            to { opacity: 1; transform: scale(1); }
        }
        @keyframes slideUp {
            from { opacity: 0; transform: translateY(12px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Temperature Converter</h2>

            <asp:TextBox ID="txtTemperature" CssClass="input-box" runat="server" placeholder="Enter Temperature"></asp:TextBox>
            
            <asp:DropDownList ID="ddlUnit" CssClass="input-box" runat="server">
                <asp:ListItem>Celsius</asp:ListItem>
                <asp:ListItem>Fahrenheit</asp:ListItem>
                <asp:ListItem>Kelvin</asp:ListItem>
            </asp:DropDownList>

            <asp:Button ID="btnConvert" CssClass="btn" runat="server" Text="Convert" OnClick="btnConvert_Click" />

            <div class="result-container">
                <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
