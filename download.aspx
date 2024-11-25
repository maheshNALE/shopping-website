<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="download.aspx.cs" Inherits="masterpage3.download" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ECOMMERCE WEBSITE CODE</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
    <style>
        /* Styles for container, input, button, etc. */

        /* Your existing CSS styles */
        .auto-style2 {
            --bs-gutter-x: 1.5rem;
            --bs-gutter-y: 0;
            width: 100%;
            max-width: 1320px;
            margin-left: auto;
            margin-right: auto;
            padding-left: calc(var(--bs-gutter-x) * 0.5);
            padding-right: calc(var(--bs-gutter-x) * 0.5);
        }
        .auto-style3 {
            width: 444px;
            height: 493px;
        }
    </style>
    </head>
<body>
    <div class="auto-style2">
        <h1></h1>
<p style="text-align: center;"><strong>Scan the QR Code with any UPI App and pay the amount, then download the receipt.</strong></p>
        <!-- Use the downloaded blank QR code image -->
  
</body>
</html>
    <table class="auto-style3" align="center">
        <tr>
            <td class="text-center">
                <asp:Image ID="Image1" runat="server" Height="152px" ImageUrl="~/blank QR-CODE.png" Width="148px" />
            </td>
        </tr>
        <tr>
            <td class="text-center">
                <asp:Image ID="Image2" runat="server" Height="29px" ImageUrl="~/phonepe logo.jpg" Width="292px" />
            </td>
        </tr>
        <tr>
            <td class="text-center">
                <asp:Label ID="Label1" runat="server" Text="UTR/TRANSACTION ID"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="text-center">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter UTR/TRANSACTION ID" style="white-space: nowrap;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-center">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Download Now" OnClick="Button1_Click" BackColor="#CC6699" Height="34px" />
            </td>
        </tr>
</table>
    <p></p>
    <p></p>
    <p></p>
    
    </div>
    <style>
            /* Change the background color of the body */
            body 
            {
                background-color: #A0D5E8; /* Set your desired background color */
            }



            /* Define the hover state for the button */
            #Button1:hover 
            {
                color: green !important; /* Change text color to green */
            }
    </style>
  
</asp:Content>

