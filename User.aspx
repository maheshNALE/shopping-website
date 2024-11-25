<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="masterpage3.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <br />
</p>
<p>
   <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx" CssClass="auto-style9" Font-Bold="True" 
    style="text-decoration: none; border: 1px solid black; padding: 5px; z-index: 1; position: absolute; background-color: transparent;" 
    onmouseover="this.style.backgroundColor='yellow'; this.style.color='white';" 
    onmouseout="this.style.backgroundColor='transparent'; this.style.color='black';">Register</asp:HyperLink>

    </p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
    <p>
        &nbsp;</p>
    <table class="auto-style6">
        <tr>
            <td class="auto-style3">User_id</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCCCFF"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Please Enter User_id" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Password</td>
            <td class="auto-style2">
                <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" BackColor="#CCCCFF"></asp:TextBox>
            </td>
            <td class="text-center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PasswordTextBox" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3" class="text-center">
                <asp:Button ID="Button3" runat="server" Font-Bold="True" OnClick="Button3_Click" Text="Login" CssClass="auto-style8" style="background-color: #E39FF6;"
                    onmouseover="this.style.color='yellow'" onmouseout="this.style.color=''"/>
                <br />
                <asp:Button ID="Button4" runat="server" Font-Bold="True" OnClick="Button4_Click1" Text="Cancel" CssClass="auto-style7" style="background-color: #E39FF6;"
                    onmouseover="this.style.color='yellow'" onmouseout="this.style.color=''"/>
            </td>
        </tr>


    </table>
    <p>
        &nbsp;</p>
<p>
</p>
    <style>
    /* Change the background color of the body */
    body {
        background-color: #A0D5E8; /* Set your desired background color */
    }
        .auto-style1 {
            height: 27px;
            width: 191px;
            text-align: center;
        }
        .auto-style2 {
            width: 191px;
            text-align: center;
        }
        .auto-style3 {
            height: 27px;
            width: 118px;
            text-align: center;
        }
        .auto-style4 {
            width: 118px;
            text-align: center;
        }
        .auto-style5 {
            height: 27px;
            text-align: center;
        }
        .auto-style6 {
            width: 48%;
            height: 148px;
            position: absolute;
            top: 266px;
            left: 288px;
            z-index: 1;
        }
        .auto-style7 {
            z-index: 1;
            position: absolute;
            top: 101px;
            left: 252px;
            width: 61px;
        }
        .auto-style8 {
            z-index: 1;
            position: absolute;
            top: 100px;
            left: 116px;
            width: 63px;
            height: 31px;
        }
        .auto-style9 {
            z-index: 1;
            position: absolute;
            top: 204px;
            left: 200px;
        }
    </style>
</asp:Content>
