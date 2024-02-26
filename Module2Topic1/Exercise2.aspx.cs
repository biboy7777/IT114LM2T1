using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            if (proofPaymentFileUpload.HasFile) 
            {
                try
                {
                    string fileExtension = System.IO.Path.GetExtension(proofPaymentFileUpload.FileName).ToLower();
                    if (fileExtension == ".jpg" || fileExtension == ".png")
                    {
                        // gets the Downloads folder path for the current user
                        string downloadsPath = Environment.GetFolderPath(Environment.SpecialFolder.UserProfile);
                        downloadsPath = System.IO.Path.Combine(downloadsPath, "Downloads");

                        // creates a downloads directory path in case it doesnt exists
                        if (!System.IO.Directory.Exists(downloadsPath))
                        {
                            System.IO.Directory.CreateDirectory(downloadsPath);
                        }

                        string savePath = System.IO.Path.Combine(downloadsPath, proofPaymentFileUpload.FileName);

                        proofPaymentFileUpload.SaveAs(savePath);
                        sb.AppendFormat("File saved to: {0}", savePath);

                    }
                    else
                    {
                        sb.Append("Picture has to be jpg or png");
                    }
                }
                catch (Exception ex)
                {
                    sb.AppendFormat("Unable to save file: {0}", ex.Message);
                }
            }
            else
            {
                messageLbl.Text = "Select a file";
            }
            messageLbl.Text = sb.ToString();
        }
    }
}