<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="masterpage3.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <style>
     /* Change the background color of the body */
     body {
        background-color: #A0D5E8; /* Set your desired background color */
     }
     </style>

    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
        .auto-style37 {
            width: 70%;
            height: 446px;
            position: absolute;
            top: 100px;
            left: 163px;
            z-index: 1;
        }
        .auto-style38 {
            width: 97px;
        }
        .auto-style39 {
            width: 97px;
            height: 26px;
        }
        .auto-style40 {
            height: 26px;
        }
        .auto-style41 {
            position: absolute;
            left: 261px;
            z-index: 1;
            top: 420px;
        }
        .auto-style42 {
            position: absolute;
            top: 382px;
            left: 266px;
            z-index: 1;
            width: 82px;
            height: 33px;
        }
        .auto-style43 {
            position: absolute;
            top: 49px;
            left: 114px;
            z-index: 1;
            width: 47px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <br />
        
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/User.aspx" CssClass="auto-style43" Font-Bold="True" 
    style="text-decoration: none; border: 1px solid black; padding: 5px; z-index: 1; position: absolute; background-color: transparent;" 
    onmouseover="this.style.backgroundColor='yellow'; this.style.color='white';" 
    onmouseout="this.style.backgroundColor='transparent'; this.style.color='blue';" ForeColor="Blue">Back</asp:HyperLink>

        
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table align="center" class="auto-style37">
            <tr>
                <td class="auto-style38">user_id</td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox10" Display="Dynamic" ErrorMessage="Please Enter User_id" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox10" Display="Dynamic" ErrorMessage="Please Enter Valid User_id" ForeColor="Blue" SetFocusOnError="True" ValidationExpression="^[0-9]{3,10}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style38">username</td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox11" Display="Dynamic" ErrorMessage="Please Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="TextBox11" Display="Dynamic" ErrorMessage="Please Enter Valid Username" ForeColor="Blue" SetFocusOnError="True" ValidationExpression="^[a-zA-Z0-9_]{3,20}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style38">email</td>
                <td>
                    <asp:TextBox ID="TextBox12" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox12" Display="Dynamic" ErrorMessage="Please Enter Email" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="TextBox12" Display="Dynamic" ErrorMessage="Please Enter Valid Email" ForeColor="Blue" SetFocusOnError="True" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">password</td>
                <td class="auto-style40">
                    <asp:TextBox ID="TextBox13" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                </td>
                <td class="auto-style40">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox13" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style40">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="TextBox13" Display="Dynamic" ErrorMessage="Please Enter Valid Password" ForeColor="Blue" SetFocusOnError="True" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&amp;])[A-Za-z\d@$!%*?&amp;]{8,}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">confirm_password</td>
                <td class="auto-style40">
                    <asp:TextBox ID="TextBox14" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                </td>
                <td class="auto-style40">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox14" Display="Dynamic" ErrorMessage="Please Enter Confirm_Password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style40">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="TextBox14" Display="Dynamic" ErrorMessage="Please Enter Valid Confirm_Password" ForeColor="Blue" SetFocusOnError="True" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&amp;])[A-Za-z\d@$!%*?&amp;]{8,}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">first_name</td>
                <td class="auto-style40">
                    <asp:TextBox ID="TextBox15" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                </td>
                <td class="auto-style40">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox15" Display="Dynamic" ErrorMessage="Please Enter First Name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style40">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style38">last_name</td>
                <td>
                    <asp:TextBox ID="TextBox16" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox16" Display="Dynamic" ErrorMessage="Please Enter Last Name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style38">mobile_number</td>
                <td>
                    <asp:TextBox ID="TextBox17" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBox17" Display="Dynamic" ErrorMessage="Please Enter Mobile Number" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server" ControlToValidate="TextBox17" Display="Dynamic" ErrorMessage="Please Enter Valid Mobile Number" ForeColor="Blue" SetFocusOnError="True" ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="4">
                    <br />
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style41"></asp:Label>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style42" Font-Bold="True" OnClick="Button1_Click" Text="Save" style="background-color: #F3EAAF;"/>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        
    </form>
</body>
</html>
