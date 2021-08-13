<%@ Page Title="Игра"  Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs"  Inherits="SeaWarsSite.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div id ="container" style="text-align:center;height:contain; margin: 0px 300px 0px 300px; padding:20px; border-radius: 7px; align-self:center; left:50%; background-color:white; margin-top:90px;">
            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="tetsy"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="1029px" Visible="False" ></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Начать новую игру" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Подтвердить (Ептег)" Visible="False" />
        </div>
</asp:Content>

