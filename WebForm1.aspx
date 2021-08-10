<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs"  Inherits="SeaWarsSite.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="1289px" Visible="False" ></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Начать новую игру" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Подтвердить (Ептег)" Visible="False" />
        </div>
    </form>
</body>
</html>
