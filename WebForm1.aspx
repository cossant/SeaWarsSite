<%@ Page Title="Игра"  Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs"  Inherits="SeaWarsSite.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
           
        <div>
        <asp:Label class="MyLabel" ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="1289px" Visible="False" ></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Начать новую игру" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Подтвердить (Ептег)" Visible="False" />
        </div>
</asp:Content>

