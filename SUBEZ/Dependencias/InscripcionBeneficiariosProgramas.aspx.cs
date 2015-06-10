using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SUBEZ.Dependencias
{
    public partial class InscripcionBeneficiariosProgramas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet dsorg = new DataSet();
            dsorg.ReadXml("C:/xml/org.xml");
            /*.DataSource = dsorg.Tables[0];
            gridBeneficiario.DataBind();*/
        }
    }
}