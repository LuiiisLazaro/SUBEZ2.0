/*''=============================================
'' Autor:	Faleg A. Peralta
'' Modificado por: 
'' Fecha de Modificación: 08.06.2015
'' Descripcion General: Valida el Inicio de Session
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
                    txtNombre.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("ApeidoPaterno");
                    txtApeidoPat.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("ApeidoMaterno");
                    txtApeidoMat.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("FechaNacimiento");
                    txtFechaNac.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("Nacionalidad");
                    txtNacionalidad.Text = nodo[0].InnerText.ToString();
                    edo_civ.SelectedValue = "5";
                    nodo = document.GetElementsByTagName("EntidadFedNacimiento");
                    edo_nac.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("EstadoCivil");
                    edo_civ.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("TelFijo");
                    tel_fij.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("TelCelular");
                    tel_cel.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("PassWord");
                    txtApeidoMat.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("Curp");
                    txtCURP.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("Mail");
                    txtApeidoMat.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("Type");
                    txtApeidoMat.Text = nodo[0].InnerText.ToString();
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
                    id_Mun.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("Localidad");
                    id_loc2.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("Localidad2");
                    id_loc.Text = nodo[0].InnerText.ToString();
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
        protected void upd_inf_dom_Click(object sender, EventArgs e)
        {
            guardaInfo();
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
                    nodo[0].InnerText = txtNombre.Text;
                    nodo = document.GetElementsByTagName("ApeidoPaterno");
                    nodo[0].InnerText = txtApeidoPat.Text;
                    nodo = document.GetElementsByTagName("ApeidoMaterno");
                    nodo[0].InnerText = txtApeidoMat.Text;
                    nodo = document.GetElementsByTagName("FechaNacimiento");
                    nodo[0].InnerText = txtFechaNac.Text ;
                    nodo = document.GetElementsByTagName("Nacionalidad");
                    nodo[0].InnerText = txtNacionalidad.Text;
                    edo_civ.SelectedValue = "5";
                    nodo = document.GetElementsByTagName("EntidadFedNacimiento");
                    nodo[0].InnerText = edo_nac.Text;
                    nodo = document.GetElementsByTagName("EstadoCivil");
                    nodo[0].InnerText = edo_civ.Text ;
                    nodo = document.GetElementsByTagName("TelFijo");
                    nodo[0].InnerText = tel_fij.Text ;
                    nodo = document.GetElementsByTagName("TelCelular");
                    nodo[0].InnerText = tel_cel.Text;
                    nodo = document.GetElementsByTagName("PassWord");
                    nodo[0].InnerText = txtApeidoMat.Text ;
                    nodo = document.GetElementsByTagName("Curp");
                    nodo[0].InnerText = txtCURP.Text;
                    nodo = document.GetElementsByTagName("Mail");
                    nodo[0].InnerText = txtApeidoMat.Text;
                    nodo = document.GetElementsByTagName("Type");
                    nodo[0].InnerText = txtApeidoMat.Text ;
                    nodo = document.GetElementsByTagName("Calle");
                    nodo[0].InnerText = dir.Text;
                    tipo_dir.SelectedValue = "5";
                    nodo = document.GetElementsByTagName("NumExt");
                    nodo[0].InnerText = n_ext.Text;
                    nodo = document.GetElementsByTagName("NumInt");
                    nodo[0].InnerText = n_int.Text ;
                    nodo = document.GetElementsByTagName("CalleEntre");
                    tipo_calle1.SelectedValue = "5";
                    tipo_calle2.SelectedValue = "5";
                    calle_posterior_tipo.SelectedValue = "5";
                    nodo[0].InnerText = calle1.Text ;
                    nodo = document.GetElementsByTagName("CalleEntre2");
                    nodo[0].InnerText = calle2.Text ;
                    nodo = document.GetElementsByTagName("CalleEntre3");
                    nodo[0].InnerText = calle_posterior.Text;
                    nodo = document.GetElementsByTagName("EntidadFed");
                    nodo[0].InnerText = id_edo.Text;
                    nodo = document.GetElementsByTagName("Delegacion");
                    nodo[0].InnerText = id_Mun.Text;
                    nodo = document.GetElementsByTagName("Localidad");
                    nodo[0].InnerText = id_loc2.Text ;
                    nodo = document.GetElementsByTagName("Localidad2");
                    nodo[0].InnerText = id_loc.Text ;
                    nodo = document.GetElementsByTagName("CP");
                    nodo[0].InnerText = id_cp.Text ;
                    nodo = document.GetElementsByTagName("Asentamiento");
                    nodo = document.GetElementsByTagName("Latitud");
                    //txtApeidoMat.Text = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("Longuitud");
                    //txtApeidoMat.Text = nodo[0].InnerText.ToString();
                    document.Save("../../../../../XML/InformacionPersonal.xml");
                }
            }
        }
    }
}