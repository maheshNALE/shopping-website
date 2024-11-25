<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="show_Lap.aspx.cs" Inherits="masterpage3.lapt" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


a {
  color: var(--bs-link-color);
  text-decoration: underline;
}

*,
*::before,
*::after {
  box-sizing: border-box;
}

        .auto-style2 {
            position: absolute;
            top: 398px;
            left: 919px;
            z-index: 1;
            width: 112px;
            height: 30px;
            font-size: large;
        }

        /* Change the background color of the body */
        body 
        {
            background-color: #A0D5E8; /* Set your desired background color */
        }

        .auto-style3 {
            font-size: large;
        }



        .hyperlink-hover:hover 
        {
            color: green; /* Change text color to green */
            border: 3px solid yellow !important; /* Change border to 3px solid yellow */
            background-color: wheat; /* Change background color to red */
        }

        .hyperlink-hover:hover 
        {
            color: green; /* Change text color to green */
            border: 3px solid yellow !important; /* Change border to 3px solid yellow */
            background-color: wheat; /* Change background color to wheat */
        }

        .auto-style4 {
            position: absolute;
            top: 164px;
            left: 390px;
            z-index: 1;
            height: 257px;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server">
       
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Laptop.aspx" style="text-decoration: none;border: 1px solid black; padding: 5px;" Font-Bold="True" CssClass="auto-style3 hyperlink-hover" >Continue Shopping</asp:HyperLink>
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
        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style2 hyperlink-hover" Font-Bold="True" NavigateUrl="~/buynow.aspx" style="text-decoration: none;border: 1px solid black; padding: 5px;">Buy Now</asp:HyperLink>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
     <asp:Label ID="lblSelectedData" runat="server"></asp:Label>



        <div>
            <!-- Image control to display the product image -->
            <asp:Image ID="ProductImage" runat="server" Width="200px" CssClass="auto-style4" />
        </div>

        <div>
            <!-- Display product details -->
            <asp:Label ID="lblProductName" runat="server" CssClass="auto-style3"></asp:Label>
            <br />
            <asp:Label ID="lblProductPrice" runat="server" CssClass="auto-style3"></asp:Label>
            <br />
            <asp:Label ID="lblSelectedQuantity" runat="server" CssClass="auto-style3"></asp:Label>
            <br />
            <asp:Label ID="lblTotalPrice" runat="server" CssClass="auto-style3"></asp:Label>
        </div>


    </form>
</body>
</html>
