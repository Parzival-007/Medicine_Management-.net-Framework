using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicineManagement
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnAdminLogin_Click(object sender, EventArgs e)
        {
            // Redirect to the admin login page
            Response.Redirect("Login.aspx");
        }

    }
}