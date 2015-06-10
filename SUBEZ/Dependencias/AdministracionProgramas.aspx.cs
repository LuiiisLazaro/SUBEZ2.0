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

namespace SUBEZ.Dependencias
{
    public partial class AdministracionProgramas : System.Web.UI.Page
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
            DataSet dsProgramaVenc = new DataSet();
            dsProgramaVenc.ReadXml("C:/xml/progVenc.xml");
            gridProgramaVenc.DataSource = dsProgramaVenc.Tables[0];
            gridProgramaVenc.DataBind();

            DataSet dsprog = new DataSet();
            dsprog.ReadXml("C:/xml/prog.xml");
            gridPrograma.DataSource = dsprog.Tables[0];
            gridPrograma.DataBind();

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

        /// <summary>
        /// Ecporta a Word
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button4_Click(object sender, EventArgs e)
        {
            Xporter.WriteXlsToResponse();
        }

        /// <summary>
        /// Ecporta a WORD
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button5_Click(object sender, EventArgs e)
        {
            Xporter.WriteRtfToResponse();
        }

        /// <summary>
        /// Ecporta a PDF
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button6_Click(object sender, EventArgs e)
        {
            Xporter.WritePdfToResponse();
        }

        /// <summary>
        /// Permite la Busquedas ,Filtros y Paginado
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void gridProgramaVenc_Load(object sender, EventArgs e)
        {
            DataSet dsProgramaVenc = new DataSet();
            dsProgramaVenc.ReadXml("C:/xml/progVenc.xml");
            gridProgramaVenc.DataSource = dsProgramaVenc.Tables[0];
            gridProgramaVenc.DataBind();

        }

        /// <summary>
        /// Permite la Busquedas ,Filtros y Paginado
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void gridPrograma_Load(object sender, EventArgs e)
        {

            DataSet dsprog = new DataSet();
            dsprog.ReadXml("C:/xml/prog.xml");
            gridPrograma.DataSource = dsprog.Tables[0];
            gridPrograma.DataBind();
        }
    }
}