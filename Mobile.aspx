<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mobile.aspx.cs" Inherits="masterpage3.Home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <p class="auto-style1">
    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style4" NavigateUrl="~/show_Mob.aspx">Show Cart</asp:HyperLink>
    </p>


    <table class="w-100">
        <tr>
            <td class="text-center">
                &nbsp;</td>
        </tr>
    </table>
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" colspan="2">
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="Fuchsia" BorderStyle="Ridge" BorderWidth="3px" CellPadding="3" CellSpacing="1" CssClass="auto-style5" RepeatDirection="Horizontal" RepeatColumns="5">
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td class="auto-style6">product_id:<asp:Label ID="Label1" runat="server" Text='<%# Bind("product_id") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">
                                    <asp:Image ID="Image1" runat="server" Height="135px" ImageAlign="Middle" ImageUrl='<%# Bind("product_img") %>' Width="109px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7"><asp:Label ID="Label2" runat="server" Text='<%# Bind("product_nm") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">Price:<asp:Label ID="Label3" runat="server" Text='<%# Bind("product_price") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">Quantity:<asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="34px" ImageUrl="~/product_img/Add to cart btn img.png" OnClick="ImageButton1_Click" Width="99px" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
            </td>
        </tr>
    </table>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
    <p>
</p>
    <p>
</p>
    <style>
    /* Change the background color of the body */
    body {
        background-color: #A0D5E8; /* Set your desired background color */
    }
    .auto-style1 {
        height: 13px;
    }
    

    /* Adjust the position of the hyperlink */
    .auto-style4 {
    /* Adjust hyperlink properties */
    position: absolute; /* Set the position to absolute */
    top: 60px; /* Adjust top position below the navigation bar */
    right: 10px; /* Adjust right position as needed */
    font-weight: bold; /* Set font weight to bold */
    color: red; /* Set text color to blue */
    text-decoration: none; /* Remove underline */
}

        .auto-style5 {
            width: 1049px;
            height: 359px;
            position: absolute;
            top: 190px;
            left: 22px;
            z-index: 1;
            bottom: -103px;
        }

        .auto-style6 {
            width: 228px;
        }
        .auto-style7 {
            height: 21px;
            width: 228px;
        }

    </style>
</asp:Content>
