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
using System.Data;

namespace SeZac.Beneficiario
{
    public partial class SolicitudPrograma : System.Web.UI.Page
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
                        DataSet ds = new DataSet();
                        ds.ReadXml("C:/XML/SolicitudesBeneficiario.XML");
                        gvSolicitudes.DataSource = ds.Tables[0];
                        gvSolicitudes.DataBind();
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
            document.Load("../../../../../XML/InformacionPersonal.xml");
            XmlElement Personas = document.DocumentElement;
            //Obtenemos la lista de todos los empleados.
            XmlNodeList listaEmpleados = document.SelectNodes("InfoPersonal/Persona");
            foreach (XmlNode item in listaEmpleados)
            {
                //Determinamos el nodo  por medio del id de empleado.
                if (item.FirstChild.InnerText == Session["Usuario"].ToString())
                {
                    nodo = document.GetElementsByTagName("Nombres");
                    //txtNombre.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("ApeidoPaterno");

                }
            }
        }


        /// <summary>
        /// Modifica la Informacion del XML
        /// </summary>
        private void guardaInfo()
        {
            document = new XmlDocument();
            document.Load("../../../../../XML/InformacionPersonal.xml");
            XmlElement Personas = document.DocumentElement;
            //Obtenemos la lista de todos los empleados.
            XmlNodeList listaEmpleados = document.SelectNodes("InfoPersonal/Persona");
            foreach (XmlNode item in listaEmpleados)
            {
                //Determinamos el nodo  por medio del id de empleado.
                if (item.FirstChild.InnerText == Session["Usuario"].ToString())
                {
                    nodo = document.GetElementsByTagName("Nombres");
                    //nodo[0].InnerText = txtNombre.Text;
                    nodo = document.GetElementsByTagName("ApeidoPaterno");
                    //nodo[0].InnerText = txtApeidoPat.Text;
                    nodo = document.GetElementsByTagName("ApeidoMaterno");
                }

            }
        }

        /// <summary>
        /// Event que permite el pagina,busqueda y carga el grid
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void gvSolicitudes_Load(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            ds.ReadXml("C:/XML/SolicitudesBeneficiario.XML");
            gvSolicitudes.DataSource = ds.Tables[0];
            gvSolicitudes.DataBind();
        }

        /// <summary>
        /// Exporta a Excel
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnAgregarPrograma_Click(object sender, EventArgs e)
        {
            Xporter.WriteXlsToResponse();
        }

        /// <summary>
        /// Exporta a Word
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            Xporter.WriteRtfToResponse();
        }

        /// <summary>
        /// Ecporta a PDF
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnGuardarCambios_Click(object sender, EventArgs e)
        {
            Xporter.WritePdfToResponse();
        }


        
    }
}