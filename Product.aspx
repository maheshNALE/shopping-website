<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="masterpage3.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

    .auto-style1 {
        height: 463px;
        position: absolute;
        top: 78px;
        left: 82px;
        z-index: 1;
        width: 429px;
    }
    .auto-style6 {
        width: 128px;
    }
    .auto-style7 {
        height: 40px;
    }
        .auto-style8 {
            position: absolute;
            top: 135px;
            left: 716px;
            z-index: 1;
            height: 343px;
            width: 297px;
        }
        .auto-style9 {
            position: absolute;
            top: 512px;
            left: 720px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 577px;
            left: 803px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 346px;
            left: 18px;
            z-index: 1;
            height: 26px;
            width: 61px;
        }
        .auto-style12 {
            position: absolute;
            top: 429px;
            left: 170px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <br />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">product_id</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">product_nm</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">product_category</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#CCCCFF">
                        <asp:ListItem>Please Select Item</asp:ListItem>
                        <asp:ListItem>Mobile</asp:ListItem>
                        <asp:ListItem>Laptop</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">product_qty</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">product_price</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">product_img</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#CCCCFF" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">product_description</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="58px" TextMode="MultiLine" Width="212px" BackColor="#CCCCFF" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style4" Font-Bold="True" OnClick="Button2_Click" style="z-index: 1; position: absolute; top: 346px; left: 111px" Text="Search" onmouseover="this.style.backgroundColor='#EEDC9A';"
                    onmouseout="this.style.backgroundColor='';"/>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style3" Font-Bold="True" OnClick="Button3_Click" style="z-index: 1; position: absolute; top: 345px; left: 214px" Text="Update" onmouseover="this.style.backgroundColor='#EEDC9A';"
                    onmouseout="this.style.backgroundColor='';"/>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style2" Font-Bold="True" OnClick="Button4_Click" style="z-index: 1; position: absolute; top: 343px; left: 317px" Text="Delete" onmouseover="this.style.backgroundColor='#EEDC9A';"
                    onmouseout="this.style.backgroundColor='';"/>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Font-Bold="True" OnClick="Button1_Click" Text="Insert" onmouseover="this.style.backgroundColor='#EEDC9A';"
                    onmouseout="this.style.backgroundColor='';"/>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button6" runat="server" CssClass="auto-style12" Font-Bold="True" OnClick="Button6_Click" Text="Home"     onmouseover="this.style.backgroundColor='#FF0800'; this.style.color='white';"
                    onmouseout="this.style.backgroundColor=''; this.style.color='';"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="2">
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style5" style="z-index: 1; position: absolute; top: 389px; left: 157px"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" CssClass="auto-style8" style="background-color: #A9A9A9" />
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
        <asp:FileUpload ID="FileUpload2" runat="server" CssClass="auto-style9" BackColor="#CCCCFF" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" CssClass="auto-style10" Font-Bold="True" OnClick="Button5_Click" Text="img_update" onmouseover="this.style.backgroundColor='#EEDC9A';"
        onmouseout="this.style.backgroundColor='';"/>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <style>
    /* Change the background color of the body */
    body {
        background-color: #A0D5E8; /* Set your desired background color */
    }
</style>
    </form>
</body>
</html>
