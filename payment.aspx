<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="masterpage3.payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <table style="width: 587px; height: 374px">
        <tr>
            <td class="text-center" colspan="4" style="font-size: x-large"><strong>Payment</strong></td>
        </tr>
        <tr>
            <td class="text-center">Full Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCCCFF"></asp:TextBox>
            </td>
            <td class="text-center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Please Enter Full Name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
            <td class="text-center">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Invalid full name format" ForeColor="Blue" SetFocusOnError="True" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="text-center">Whats&#39;App Number</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCCCFF"></asp:TextBox>
            </td>
            <td class="text-center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Please Enter 10 Digit Number" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
            <td class="text-center">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Invalid WhatsApp number format" ForeColor="Blue" SetFocusOnError="True" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="text-center">Email</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCCCFF"></asp:TextBox>
            </td>
            <td class="text-center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Please Enter Email" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
            <td class="text-center">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Invalid email format" ForeColor="Blue" SetFocusOnError="True" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="text-center" colspan="4">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Next" BackColor="#CCCCFF" onmouseover="this.style.backgroundColor='#F2B8C6';" onmouseout="this.style.backgroundColor='#A0522D';" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>


    <style>
        /* Change the background color of the body */
        body 
        {
            background-color: #A0D5E8; /* Set your desired background color */
        }
    </style>

</asp:Content>
