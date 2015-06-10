using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SUBEZ.Dependencias
{
    public partial class InscripcionOrganizacionPrograma : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet dsorg = new DataSet();
            dsorg.ReadXml("C:/xml/org.xml");
            ASPxGridView1.DataSource = dsorg.Tables[0];
            ASPxGridView1.DataBind();

            DataSet dsprog = new DataSet();
            dsprog.ReadXml("C:/xml/prog.xml");
            ASPxGridView2.DataSource = dsprog.Tables[0];
            ASPxGridView2.DataBind();


        }
    }
}