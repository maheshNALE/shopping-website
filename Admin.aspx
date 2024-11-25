<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="masterpage3.Admin2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    &nbsp;</p>
<p>
    <asp:Label ID="Label1" runat="server" style="z-index: 1; position: absolute; top: 236px; left: 337px" Text="admin_id"></asp:Label>
    <asp:Label ID="Label2" runat="server" style="z-index: 1; position: absolute; top: 280px; left: 335px" Text="password"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2" BackColor="#CCCCFF"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Please Enter Admin_id" ForeColor="Red" SetFocusOnError="True" style="z-index: 1; position: absolute; top: 235px; left: 621px"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PasswordTextBox" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True" style="z-index: 1; position: absolute; top: 276px; left: 622px"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" CssClass="auto-style3" BackColor="#CCCCFF"></asp:TextBox>
</p>
<p>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" CssClass="auto-style4" Font-Bold="True" style="background-color: #F3EAAF;"/>
    <asp:Button ID="Button2" runat="server" CssClass="auto-style1" Font-Bold="True" Text="Cancel" style="background-color: #F3EAAF;"/>
</p>
<p>
</p>
<p>
</p>
<p>
    <asp:Label ID="Label3" runat="server" ForeColor="Red" style="z-index: 1; position: absolute; top: 398px; left: 430px; width: 78px"></asp:Label>
</p>
    <style>
    /* Change the background color of the body */
    body {
        background-color: #A0D5E8; /* Set your desired background color */
    }
        .auto-style1 {
            position: absolute;
            top: 341px;
            left: 534px;
            z-index: 1;
        }
        .auto-style2 {
            z-index: 1;
            position: absolute;
            top: 234px;
            left: 420px;
            width: 160px;
        }
        .auto-style3 {
            z-index: 1;
            position: absolute;
            top: 276px;
            left: 424px;
            width: 156px;
        }
        .auto-style4 {
            z-index: 1;
            position: absolute;
            top: 342px;
            left: 425px;
            width: 63px;
        }
    </style>
</asp:Content>
