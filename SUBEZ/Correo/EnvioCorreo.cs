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
using System.Net.Mail;
using System.Net;

namespace SUBEZ
{
    public class EnvioCorreo
    {
        MailMessage mmsg = new MailMessage();
        Attachment adjuntos;
        SmtpClient cliente = new SmtpClient();
        String archivos = "";
        String[] destinatario = new String[] { "blancotattoos@hotmail.com.mx", "iscfperalta@gmail.com", "luishdezlazaro@hotmail.com" };
        String destinatarioCopia = "";
        String cuerpo = "";

        /// <summary>
        /// Constructor, Asigna el cuerpo
        /// </summary>
        public EnvioCorreo(String Usuario, String PassWord)
        {
            cuerpo = "<u><b>Propósito:Recuperación de Correo</u></b>" +
                         "<br><br>" +
                         "Estimado:Usuario SUBEZ<br><br><br>" +
                         "Éste es un correo para indicarte tu usuario y contraseña para que ingreses al portal:" +
                         "<br><br>" +
                         " User:<br>" + Usuario +
                         " PassWord:<br>" + PassWord +
                         " Favor de Revisar la configuración dentro del SUBEZ." +
                         "<br><br>" +
                         "Gracias por utilizar SUBEZ" +
                         "<br><br>" +
                         "<h6>/////************************* Por Favor, No respondas este correo  =)   " + DateTime.Now.ToShortDateString() + " SUBEZ 2015. *************************////<br>";
        }

        /// <summary>
        /// Agrega los destinatarios al Objeto del Correo
        /// </summary>
        public void destinatarios()
        {
            foreach (var item in destinatario)
            {
                mmsg.To.Add(item);
            }
        }


        /// <summary>
        ///  Envia Correos 
        /// </summary>
        public Boolean Envia(String Usuario, String PassWord)
        {
            try
            {
                //mmsg = new MailMessage(Usuario, PassWord);
                destinatarios();
                //Nota: La propiedad To es una colección que permite enviar el mensaje a más de un destinatario
                //Asunto
                mmsg.Subject = "Recuperación de Cuenta de Correo SUBEZ";
                mmsg.SubjectEncoding = System.Text.Encoding.UTF8;

                //Cuerpo del Mensaje
                mmsg.Body = cuerpo;
                mmsg.BodyEncoding = System.Text.Encoding.UTF8;
                mmsg.IsBodyHtml = true; //Si no queremos que se envíe como HTML

                //Correo electronico desde la que enviamos el mensaje
                mmsg.From = new MailAddress("faleg.peralta@neoteck.com.mx");
                return clienteCorreo();
            }
            catch (Exception)
            {

                return false;
            }
        }

        /// <summary>
        /// Cliente de configuracion de correo
        /// </summary>
        /// <returns></returns>
        public Boolean clienteCorreo()
        {
            try
            {

                //Creamos un objeto de cliente de correo
                cliente = new SmtpClient();
                //Hay que crear las credenciales del correo emisor
                cliente.Credentials = new NetworkCredential("faleg.peralta@neoteck.com.mx", "FalPer.582");

                //Lo siguiente es obligatorio si enviamos el mensaje desde Gmail
                //cliente.Port = 587
                //cliente.EnableSsl = true;

                cliente.Port = 26;
                //cliente.Port = 465
                //cliente.Host = "emailsrv.vivendum.com.mx" //Para Gmail "smtp.gmail.com";
                cliente.Host = "neoteck.com.mx"; //Para Gmail "smtp.gmail.com";

                //Enviamos el mensaje      
                cliente.Send(mmsg);
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

    }
}