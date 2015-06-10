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
    public partial class Acceso : System.Web.UI.Page
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
            Session["Usuario"] = "0";
        }

        /// <summary>
        /// Evento del Boton Registrar
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Session["Registrar"] = "Beneficiario";
            Response.Redirect("~/RegistroUsuario.aspx");
        }

        /// <summary>
        /// Evento del Boton Login de Empresas
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnLoginEmpresa_Click(object sender, EventArgs e)
        {
            try
            {
                document = new XmlDocument();
                document.Load("../../../../../XML/EmpresaLogin.xml");
                nodo = document.GetElementsByTagName("UserId");
                String strID = nodo[0].InnerText.ToString();
                nodo = document.GetElementsByTagName("CompanyName");
                String strUser = nodo[0].InnerText.ToString();
                nodo = document.GetElementsByTagName("CompanyPassWord");
                String strPass = nodo[0].InnerText.ToString();
                if (txtPassEmpresa.Text == strPass && txtEmpresa.Text == strUser)
                {
                    Session["Usuario"] = strID;
                    Response.Redirect("~/Organizacion/IPersonal1.aspx");
                }
                else
                {
                    Mensaje("Usuario o Password Incorrecto, PorFavor Intenta de Nuevo");
                }
            }
            catch (Exception )
            {
                Mensaje("Usuario o Password Incorrecto, PorFavor Intenta de Nuevo");
            }
        }

        /// <summary>
        /// Muestra el mensaje en un Alert Beneficiario
        /// </summary>
        /// <param name="msj"></param>
        public void Mensaje(String msj)
        {
            Literal literal = new Literal();
            literal.Text = "<script language='javascript'> window.alert('" + msj + "') </script>";
            Page.Controls.Add(literal);
        }

        /// <summary>
        ///  Evento del Boton Login
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                document = new XmlDocument();
                document.Load("../../../../../XML/BeneficiarioLogin.xml");
                nodo = document.GetElementsByTagName("UserId");
                String strID = nodo[0].InnerText.ToString();
                nodo = document.GetElementsByTagName("UserCurp");
                String strUser = nodo[0].InnerText.ToString();
                nodo = document.GetElementsByTagName("UserPassWord");
                String strPass = nodo[0].InnerText.ToString();
                if (txtPassWord.Text == strPass && txtCURP.Text == strUser)
                {
                    Session["Usuario"] = strID;
                    Response.Redirect("~/Beneficiario/IPersonal1.aspx");
                }
                else
                {
                    Mensaje("Usuario o Password Incorrecto, PorFavor Intenta de Nuevo");
                }
            }
            catch (Exception)
            {
                Mensaje("Usuario o Password Incorrecto, PorFavor Intenta de Nuevo");
            }
        }
    }
}