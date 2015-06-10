/*''=============================================
'' Autor:	Luis Lazaro
'' Modificado por: Faleg A. Peralta
'' Fecha de Modificación: 10.06.2015
'' Descripcion General: Valida el Inicio de Session
'' =============================================*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace SUBEZ.Organizacion
{
    public partial class OrgConfig : System.Web.UI.Page
    {
        XmlDocument document;
        XmlNodeList nodo;
        XmlAttribute attributo;

        /// <summary>
        /// Evento de la Pagina, ocurre cuando se termina de cargar
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsPostBack)
                {
                    if (Session["Usuario"].ToString() == "0" && Session["Usuario"].ToString() == "")
                    {
                        Response.Redirect("~/Acceso.aspx");
                    }
                    else
                    {
                        CargaDatos();
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("~/Acceso.aspx");
            }
        }

        /// <summary>
        /// Carga los Datos del Beneficiario;
        /// </summary>
        private void CargaDatos()
        {
            document = new XmlDocument();
            document.Load("../../../../../XML/EmpresaLogin.xml");
            XmlElement Personas = document.DocumentElement;
            //Obtenemos la lista de todos los empleados.
            XmlNodeList listaEmpleados = document.SelectNodes("Companys/Company");
            foreach (XmlNode item in listaEmpleados)
            {
                //Determinamos el nodo  por medio del id de empleado.
                if (item.FirstChild.InnerText == Session["Usuario"].ToString())
                {

                    nodo = document.GetElementsByTagName("CompanyName");
                    lblNombre.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("CompanyRFC");
                    lblcurp.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("CompanyMail");
                    lbltipo.Text = nodo[0].InnerText.ToString();
                }
            }
            document = new XmlDocument();
            document.Load("C:/XML/EmpresaLogin.xml");
            Personas = document.DocumentElement;
            //Obtenemos la lista de todos los empleados.
            listaEmpleados = document.SelectNodes("Companys/Company");
            foreach (XmlNode item in listaEmpleados)
            {
                //Determinamos el nodo  por medio del id de empleado.
                if (item.FirstChild.InnerText == Session["Usuario"].ToString())
                {
                    nodo = document.GetElementsByTagName("CompanyMail");
                    email_act.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("CompanyPassWord");
                    chp_pass_act_.Text = nodo[0].InnerText.ToString();
                }
            }
        }


        /// <summary>
        /// Modifica la Informacion del XML
        /// </summary>
        private void guardaInfo()
        {
            if (new_email.Text == new_email_conf.Text && new_paswd.Text == new_paswd_conf.Text)
            {
                document = new XmlDocument();
                document.Load("C:/XML/EmpresaLogin.xml");
                XmlElement Personas = document.DocumentElement;
                //Obtenemos la lista de todos los empleados.
                XmlNodeList listaEmpleados = document.SelectNodes("Companys/Company");
                foreach (XmlNode item in listaEmpleados)
                {
                    //Determinamos el nodo  por medio del id de empleado.
                    if (item.FirstChild.InnerText == Session["Usuario"].ToString())
                    {
                        nodo = document.GetElementsByTagName("CompanyMail");
                        nodo[0].InnerText = new_email.Text;
                        nodo = document.GetElementsByTagName("CompanyPassWord");
                        nodo[0].InnerText = new_paswd.Text;
                        document.Save("C:/XML/EmpresaLogin.xml.xml");
                    }

                }
            }
        }
        /// <summary>
        /// Actualiza la Informacion
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void upd_new_email_Click(object sender, EventArgs e)
        {
            guardaInfo();
        }
        /// <summary>
        /// Actualiza la Informacion
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void upd_new_paswd_Click(object sender, EventArgs e)
        {
            guardaInfo();
        }
    }
}