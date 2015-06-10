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

namespace SeZac.Organizacion
{
    public partial class IPersonal1 : System.Web.UI.Page
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
                    nodo = document.GetElementsByTagName("CompanyType");
                    lbltipo.Text = nodo[0].InnerText.ToString();
                }
            }
            document = new XmlDocument();
            document.Load("../../../../../XML/InformacionEmpresa.xml");
            Personas = document.DocumentElement;
            //Obtenemos la lista de todos los empleados.
            listaEmpleados = document.SelectNodes("Companys/Company");
            foreach (XmlNode item in listaEmpleados)
            {
                //Determinamos el nodo  por medio del id de empleado.
                if (item.FirstChild.InnerText == Session["Usuario"].ToString())
                {
                    nodo = document.GetElementsByTagName("Calle");
                    dir.Text = nodo[0].InnerText.ToString();
                    tipo_dir.SelectedValue = "5";
                    nodo = document.GetElementsByTagName("NumExt");
                    n_ext.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("NumInt");
                    n_int.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("CalleEntre");
                    tipo_calle1.SelectedValue = "5";
                    tipo_calle2.SelectedValue = "5";
                    calle_posterior_tipo.SelectedValue = "5";
                    calle1.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("CalleEntre2");
                    calle2.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("CalleEntre3");
                    calle_posterior.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("EntidadFed");
                    id_edo.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("Delegacion");
                    municipio.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("Localidad");
                    id_loc.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("Localidad2");
                    id_loc2.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("CP");
                    id_cp.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("Asentamiento");
                    tipo_asentamiento.SelectedValue = "5";
                    nodo = document.GetElementsByTagName("Latitud");
                    //txtApeidoMat.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("Longuitud");
                    //txtApeidoMat.Text = nodo[0].InnerText.ToString();
                }
            }

        }

        /// <summary>
        /// Guarda la Informaión de la Beneficiario
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void upd_info_basic_Click(object sender, EventArgs e)
        {
            guardaInfo();
        }

        /// <summary>
        /// Guarda la Informaión de la Beneficiario
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void upd_inf_dom_Click1(object sender, EventArgs e)
        {
            guardaInfo();
        }

        /// <summary>
        /// Modifica la Informacion del XML
        /// </summary>
        private void guardaInfo()
        {
            document = new XmlDocument();
            document.Load("../../../../../XML/InformacionEmpresa.xml");
            XmlElement Personas = document.DocumentElement;
            //Obtenemos la lista de todos los empleados.
            XmlNodeList listaEmpleados = document.SelectNodes("Companys/Company");
            foreach (XmlNode item in listaEmpleados)
            {
                //Determinamos el nodo  por medio del id de empleado.
                if (item.FirstChild.InnerText == Session["Usuario"].ToString())
                {
                    nodo = document.GetElementsByTagName("Calle");
                    nodo[0].InnerText = dir.Text;
                    tipo_dir.SelectedValue = "5";
                    nodo = document.GetElementsByTagName("NumExt");
                    nodo[0].InnerText = n_ext.Text;
                    nodo = document.GetElementsByTagName("NumInt");
                    nodo[0].InnerText = n_int.Text;
                    nodo = document.GetElementsByTagName("CalleEntre");
                    tipo_calle1.SelectedValue = "5";
                    tipo_calle2.SelectedValue = "5";
                    calle_posterior_tipo.SelectedValue = "5";
                    nodo[0].InnerText = calle1.Text;
                    nodo = document.GetElementsByTagName("CalleEntre2");
                    nodo[0].InnerText = calle2.Text;
                    nodo = document.GetElementsByTagName("CalleEntre3");
                    nodo[0].InnerText = calle_posterior.Text;
                    nodo = document.GetElementsByTagName("EntidadFed");
                    nodo[0].InnerText = id_edo.Text;
                    nodo = document.GetElementsByTagName("Delegacion");
                    nodo[0].InnerText = municipio.Text;
                    nodo = document.GetElementsByTagName("Localidad");
                    nodo[0].InnerText = id_loc.Text;
                    nodo = document.GetElementsByTagName("Localidad2");
                    nodo[0].InnerText = id_loc2.Text;
                    nodo = document.GetElementsByTagName("CP");
                    nodo[0].InnerText = id_cp.Text;
                    nodo = document.GetElementsByTagName("Asentamiento");
                    nodo = document.GetElementsByTagName("Latitud");
                    //txtApeidoMat.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("Longuitud");
                    //txtApeidoMat.Text = nodo[0].InnerText.ToString();
                    document.Save("../../../../../XML/InformacionEmpresa.xml");
                }
            }
        }

    }
}