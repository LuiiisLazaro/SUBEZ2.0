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

namespace SUBEZ
{
    public partial class RecuperarPassWord : System.Web.UI.Page
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
            if (!Page.IsPostBack)
            {

            }
        }

        /// <summary>
        /// Envia un correo Con la Contraseña del Usuario
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnRecuperar_Click(object sender, EventArgs e)
        {
            if (Request["Opcion"] == "Usuario")
            {
                try
                {
                    document = new XmlDocument();
                    document.Load("../../../../../XML/Login.xml");
                    nodo = document.GetElementsByTagName("UserMail");
                    String strMail = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("UserPassWord");
                    String strPass = nodo[0].InnerText.ToString();
                    if (true)
                    {
                        Session["Usuario"] = "1";
                        EnvioCorreo obj = new EnvioCorreo(strMail, strPass);
                        obj.Envia(strMail, strPass);
                        Response.Redirect("~/login.aspx");
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
            else
            {
                try
                {
                    document = new XmlDocument();
                    document.Load("../../../../../XML/BeneficiarioLogin.xml");
                    nodo = document.GetElementsByTagName("UserMail");
                    String strMail = nodo[0].InnerText.ToString();
                    nodo = document.GetElementsByTagName("UserPassWord");
                    String strPass = nodo[0].InnerText.ToString();
                    if (true)
                    {
                        Session["Usuario"] = "1";
                        EnvioCorreo obj = new EnvioCorreo(strMail, strPass);
                        obj.Envia(strMail, strPass);
                        Response.Redirect("~/acceso.aspx");
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