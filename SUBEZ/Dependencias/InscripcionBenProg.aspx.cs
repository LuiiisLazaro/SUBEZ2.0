using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SUBEZ.Dependencias
{
    public partial class InscripcionBenProg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet dsBeneficiario = new DataSet();
            dsBeneficiario.ReadXml("C:/xml/benprog.xml");
            gridBeneficiario.DataSource = dsBeneficiario.Tables[0];
            gridBeneficiario.DataBind();

            DataSet dsprog = new DataSet();
            dsprog.ReadXml("C:/xml/prog.xml");
            gridPrograma.DataSource = dsprog.Tables[0];
            gridPrograma.DataBind();

        }
    }
}