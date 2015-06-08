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
using System.IO;
namespace Sistema
{
    public partial class WebForm1 : System.Web.UI.Page
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

        }

        /// <summary>
        /// Evento del Boton Login
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void LoginButton_Click(object sender, EventArgs e)
        {
            if (txtPassword.Text != "" && txtUserName.Text != "")
            {
                try
                {
                    document = new XmlDocument();
                    document.Load("../../../../../XML/Login.xml");
                    nodo = document.GetElementsByTagName("UserName");
                    String strUser = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("UserPassWord");
                    String strPass = nodo[0].InnerText.ToString();
                    if (txtPassword.Text == strPass && txtUserName.Text == strUser.ToUpper())
                    {
                        Session["Usuario"] = "1";
                        Response.Redirect("~/default.aspx");
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
        
        /// <summary>
        /// Evento del Boton Registrar
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Session["Registrar"] = "Usuario";
            Response.Redirect("~/RegistroUsuario.aspx");
        }

        /// <summary>
        /// Muestra el mensaje en un Alert
        /// </summary>
        /// <param name="msj"></param>
        public void Mensaje(String msj)
        {
            Literal literal = new Literal();
            literal.Text = "<script language='javascript'> window.alert('" + msj + "') </script>";
            Page.Controls.Add(literal);
        }

    }
}