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
    public partial class RegistroOrganizacion : System.Web.UI.Page
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
                /*if (Session["Registrar"].ToString() == "Usuario")
                {
                    lblRegistrar.Text = "Escribe tu Usuario:";
                }
                else
                {
                    lblRegistrar.Text = "Escribe tu CURP";
                }*/
            }
        }

        /// <summary>
        /// Registra el Usuario de Acuerdo al Tipo que Pertenezca
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnIniciarRegistro_Click(object sender, EventArgs e)
        {
            document = new XmlDocument();
            if (txtRFC.Text != "" && txtMail.Text != "" && txtRepiteMail.Text != "" && txtPassword.Text != "" && txtRepitePassword.Text != "")
            {
                if (txtMail.Text == txtRepiteMail.Text && txtPassword.Text == txtRepitePassword.Text)
                {
                    try
                    {
                        document = new XmlDocument();
                        document.Load("C:/XML/EmpresaLogin.xml");
                        XmlNode strUsuario = CrearNodoXml(txtRFC.Text, txtPassword.Text, txtRFC.Text, txtMail.Text, "Encargado");
                        //Obtenemos el nodo raiz del documento.
                        XmlNode nodoRaiz = document.DocumentElement;
                        //Insertamos el nodo empleado al final del archivo
                        nodoRaiz.InsertAfter(strUsuario, nodoRaiz.LastChild);
                        document.Save("C:/XML/EmpresaLogin.xml");
                        Response.Redirect("~/acceso.aspx");
                        Mensaje("Usuario Guarddo Correctamente.");
                    }
                    catch (Exception)
                    {
                        Mensaje("Hubo un erro al guardar la información");
                    }
                }
                else
                {
                    Mensaje("Por Favor revisa la Información, Email o Password no Coinciden.");
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

        /// <summary>
        /// Crea un Nuevo Nodo y lo Inserta en el Nodo Correspondiente
        /// </summary>
        /// <param name="UserName"></param>
        /// <param name="UserPassWord"></param>
        /// <param name="UserCurp"></param>
        /// <param name="UserMail"></param>
        /// <param name="UserType"></param>
        /// <returns></returns>
        private XmlNode CrearNodoXml(string UserName, string UserPassWord, string UserCurp, string UserMail, string UserType)
        {
            //Creamos el nodo que deseamos insertar.
            XmlElement empleado = document.CreateElement("Company");

            //Creamos el elemento UserName.
            XmlElement idEmpleado = document.CreateElement("CompanyName");
            idEmpleado.InnerText = UserName;
            empleado.AppendChild(idEmpleado);

            //Creamos el elemento UserPassWord.
            XmlElement user = document.CreateElement("CompanyPassWord");
            user.InnerText = UserPassWord;
            empleado.AppendChild(user);

            //Creamos el elemento UserCurp.
            XmlElement curp = document.CreateElement("CompanyRFC");
            curp.InnerText = UserCurp;
            empleado.AppendChild(curp);

            //Creamos el elemento UserMail.
            XmlElement mail = document.CreateElement("CompanyMail");
            mail.InnerText = UserMail;
            empleado.AppendChild(mail);

            //Creamos el elemento UserType.
            XmlElement type = document.CreateElement("CompanyType");
            type.InnerText = UserMail;
            empleado.AppendChild(type);

            return empleado;
        }
    }
}