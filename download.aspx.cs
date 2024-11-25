using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using QRCoder;


namespace masterpage3
{
    public partial class download : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Generate QR code
                GenerateQRCode();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Your code to handle the download process goes here
            // For example, you can write code to generate and serve the receipt file for download

            // Placeholder code to demonstrate a sample download action
            // This code assumes you have a file named "receipt.txt" in the root directory
            string filePath = Server.MapPath("~/Downloads/example.txt");

            // Set the appropriate headers for file download
            Response.Clear();
            Response.ContentType = "text/plain";
            Response.AppendHeader("Content-Disposition", "attachment; filename=receipt.txt");

            // Write the file content to the response stream
            Response.WriteFile(filePath);

            // End the response
            Response.End();
        }
        private void GenerateQRCode()
        {
            /*// Generate QR code image for the transaction ID
            string transactionId = GenerateTransactionId(); // Generate a unique transaction ID
            string qrCodeText = "UPI://" + transactionId; // UPI transaction format

            QRCodeGenerator qrGenerator = new QRCodeGenerator();
            QRCodeData qrCodeData = qrGenerator.CreateQrCode(qrCodeText, QRCodeGenerator.ECCLevel.Q);
            QRCode qrCode = new QRCode(qrCodeData);
            Bitmap qrCodeImage = qrCode.GetGraphic(10);

            // Convert Bitmap to byte array
            MemoryStream ms = new MemoryStream();
            qrCodeImage.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
            byte[] qrCodeBytes = ms.ToArray();

            // Convert byte array to base64 string for image source
            string qrCodeBase64 = Convert.ToBase64String(qrCodeBytes);
            string qrCodeImageUrl = "data:image/png;base64," + qrCodeBase64;

            // Set the QR code image source
            Image1.ImageUrl = qrCodeImageUrl;

            // Store transaction ID in session or hidden field for later use
            Session["TransactionId"] = transactionId;*/
        }
        /*private string GenerateTransactionId()
        {
            // Generate a unique transaction ID (you can implement your own logic here)
            // For demonstration, let's generate a random string
            return Guid.NewGuid().ToString("N").Substring(0, 10); // Generate a random string of length 10
            
        }*/
    }
}