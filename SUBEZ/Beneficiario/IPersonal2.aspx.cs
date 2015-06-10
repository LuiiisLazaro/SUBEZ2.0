/*''=============================================
'' Autor:	Faleg A. Peralta
'' Modificado por: 
'' Fecha de Modificación: 08.06.2015
'' Descripcion General: Valida la Informacion Escolar e Informacion Laboral
'' =============================================*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace SeZac
{
    public partial class IPersonal2 : System.Web.UI.Page
    {
        XmlDocument document;
        XmlNodeList nodo,nodo2;
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
            document.Load("../../../../../XML/InformacionEscolar.xml");
            XmlElement Personas = document.DocumentElement;
            //Obtenemos la lista de todos los empleados.
            XmlNodeList listaEmpleados = document.SelectNodes("InfoEscolar/Escolar");
            foreach (XmlNode item in listaEmpleados)
            {
                //Determinamos el nodo  por medio del id de empleado.
                if (item.FirstChild.InnerText == Session["Usuario"].ToString())
                {
                    nodo = document.GetElementsByTagName("GradoEstudios");
                    dllEstudios.SelectedValue = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("Institucion");
                    dllUniv.SelectedValue = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("Carrera");
                    n_int.Text = nodo[0].InnerText.ToString();
                }
            }
            document = new XmlDocument();
            document.Load("../../../../../XML/InformacionLaboral.xml");
            Personas = document.DocumentElement;
            //Obtenemos la lista de todos los empleados.
            listaEmpleados = document.SelectNodes("InfoLaboral/Laboral");            
            foreach (XmlNode item in listaEmpleados)
            {
                //Determinamos el nodo  por medio del id de empleado.
                if (item.FirstChild.InnerText == Session["Usuario"].ToString())
                {
                    nodo2 = document.GetElementsByTagName("Empresa");
                    empresa_laboral.Text = nodo2[0].InnerText.ToString();
                    nodo2 = document.GetElementsByTagName("Puesto");
                    txt_puesto.Text = nodo2[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("Jefe");
                    txt_jefe.Text = nodo2[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("TelOficina");
                    txt_telefono_oficina.Text = nodo2[0].InnerText.ToString(); 
                }
            }
        }


        /// <summary>
        /// Modifica la Informacion del XML
        /// </summary>
        private void guardaInfo()
        {
            document = new XmlDocument();
            document.Load("../../../../../XML/InformacionEscolar.xml");
            XmlElement Personas = document.DocumentElement;
            //Obtenemos la lista de todos los empleados.
            XmlNodeList listaEmpleados = document.SelectNodes("InfoEscolar/Escolar");
            foreach (XmlNode item in listaEmpleados)
            {
                //Determinamos el nodo  por medio del id de empleado.
                if (item.FirstChild.InnerText == Session["Usuario"].ToString())
                {
                    nodo = document.GetElementsByTagName("GradoEstudios");
                    nodo[0].InnerText = dllEstudios.SelectedValue;
                    nodo = document.GetElementsByTagName("Institucion");
                    nodo[0].InnerText= dllUniv.SelectedValue;
                    nodo = document.GetElementsByTagName("Carrera");
                    nodo[0].InnerText = n_int.Text;
                    document.Save("../../../../../XML/InformacionEscolar.xml");
                }
            }
            document = new XmlDocument();
            document.Load("../../../../../XML/InformacionLaboral.xml");
            Personas = document.DocumentElement;
            //Obtenemos la lista de todos los empleados.
            listaEmpleados = document.SelectNodes("InfoLaboral/Laboral");
            foreach (XmlNode item in listaEmpleados)
            {
                //Determinamos el nodo  por medio del id de empleado.
                if (item.FirstChild.InnerText == Session["Usuario"].ToString())
                {
                    nodo2 = document.GetElementsByTagName("Empresa");
                    nodo2[0].InnerText = empresa_laboral.Text;
                    nodo2 = document.GetElementsByTagName("Puesto");
                    nodo2[0].InnerText = txt_puesto.Text;
                    nodo2 = document.GetElementsByTagName("Jefe");
                    nodo2[0].InnerText = txt_jefe.Text;
                    nodo2 = document.GetElementsByTagName("TelOficina");
                    nodo2[0].InnerText = txt_telefono_oficina.Text;
                    document.Save("../../../../../XML/InformacionLaboral.xml");
                }
            }
        }


        /// <summary>
        /// Guarda la Informaión de la Beneficiario
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {
            guardaInfo();
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
    }
}