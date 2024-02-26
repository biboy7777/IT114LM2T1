using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            if (fullName.Text != "" && age.Text != "" && email.Text != "")
            {
                if (Page.IsValid)
                {
                    result.Text = $"Full Name: {fullName.Text}<br/>Age: {age.Text}<br/>Email: {email.Text}";
                }
                else
                {
                    result.Text = "Please ensure every input is correct.";
                }
            }
            else
            {
                result.Text = "Please input all the necessary values.";
            }
        }
    }
}