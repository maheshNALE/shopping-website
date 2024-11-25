<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="buynow.aspx.cs" Inherits="masterpage3.buynow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
                        <div style="text-align: center;">
    <br />
    <br />
    <br />
    <br />
    <table>
        <tr>
            <td colspan="4" style="text-align: center;"><h2> Address Details</h2>&nbsp; <br />
            </td>
        </tr>
        <tr>
            <td>User_id</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" BackColor="#CCCCFF" BorderColor="White"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="Please Enter User Id" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Full Name:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                <br />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>Address:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                <br />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>City:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                <br />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>State:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                <br />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>Pin Code:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" BackColor="#CCCCFF"></asp:TextBox>
                <br />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>Delivery Time:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#FFCCFF">
                    <asp:ListItem>Select Delivery Time</asp:ListItem>
                    <asp:ListItem>6 AM - 11 PM</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center;">Weekend Delivery:<br />
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center;">
                <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                    <asp:ListItem>Saturday</asp:ListItem>
                </asp:CheckBoxList>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center;">
                <asp:CheckBoxList ID="CheckBoxList2" runat="server">
                    <asp:ListItem>Sunday</asp:ListItem>
                </asp:CheckBoxList>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center;">Additional Information<br />
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center;">
                <table class="w-100">
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" Height="49px" TextMode="MultiLine" Width="142px" BackColor="#CCCCFF"></asp:TextBox>
                            <asp:HyperLink ID="HyperLink1" runat="server" style="text-decoration: none; border: 1px solid black; padding: 5px; z-index: 1; position: absolute; top: 689px; left: 646px; width: 78px; color: black;" NavigateUrl="~/payment.aspx" onmouseover="this.style.color='red';" onmouseout="this.style.color='black';" BackColor="#66FF66" Font-Bold="True">Payment</asp:HyperLink>

                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td style="text-align: center;">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center;">
                
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" BackColor="#CCCCFF" Font-Bold="True" CssClass="button-border"/>
                
                <br />
            </td>
        </tr>
        
    </table>
    
</div>
    <p>

        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="z-index: 1; position: absolute; top: 579px; left: 454px" Text="Show Address" BackColor="#66FF66" Font-Bold="True" />

        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="z-index: 1; position: absolute; top: 580px; left: 623px" Text="Update Address" BackColor="#66FF66" Font-Bold="True" />

    </p>
<p>

    </p>
    <style>
        /* Change the background color of the body */
        body 
        {
            background-color: #A0D5E8; /* Set your desired background color */
        }


        .button-border:hover 
        {
            border: 2px solid red;
        }
     </style>
 
</asp:Content>

