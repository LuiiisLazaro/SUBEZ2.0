<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InscripcionOrganizacionPrograma.aspx.cs"
    Inherits="SUBEZ.Dependencias.InscripcionOrganizacionPrograma" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SUBEZ</title>
    <meta name="description" content="">
    <meta name="author" content="Blue Team CIMAT">
    <meta name="robots" content="index, follow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../Css/Style/foundation.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/foundation.css" rel="stylesheet" type="text/css" />
    <script src="../Css/Script/responsive-tables.js" type="text/javascript"></script>
    <link href="../Css/Style/jquery.visualize.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/foundation.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/jquery.jgrowl.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/responsive-tables.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/jquery.visualize.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/cnbes.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico">
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>
    <link rel="shortcut icon" href="http://www.SUBEZ.sep.gob.mx/favicon.ico">
    <link rel="icon" href="http://www.SUBEZ.sep.gob.mx/sep.png" type="image/x-icon">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="http://www.SUBEZ.sep.gob.mx/perfil/me/static/img/icons/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="http://www.SUBEZ.sep.gob.mx/perfil/me/static/img/icons/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="http://www.SUBEZ.sep.gob.mx/perfil/me/static/img/icons/apple-touch-icon-57-precomposed.png">
    <script async="" src="./SUBEZ_files/analytics.js"></script>
    <script src="../Css/Script/js"></script>
    <script src="../Css/Script/main.js"></script>
    <meta class="foundation-data-attribute-namespace">
    <meta class="foundation-mq-xxlarge">
    <meta class="foundation-mq-xlarge-only">
    <meta class="foundation-mq-xlarge">
    <meta class="foundation-mq-large-only">
    <meta class="foundation-mq-large">
    <meta class="foundation-mq-medium-only">
    <meta class="foundation-mq-medium">
    <meta class="foundation-mq-small-only">
    <meta class="foundation-mq-small">
    <style></style>
    <script type="text/javascript" charset="UTF-8" src="./SUBEZ_files/common.js"></script>
    <script type="text/javascript" charset="UTF-8" src="./SUBEZ_files/util.js"></script>
    <script type="text/javascript" charset="UTF-8" src="./SUBEZ_files/stats.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <section class="large-3 columns" role="main"> 
            <div class="navigation-block affix-top"> 
                <section class="usuario">
                  <figure> <img src="../Image/perfil.jpg">
                    <figcaption><strong><a class=""><asp:Label ID="lblNombre" runat="server" Text="Luis Angel Hernández Lázaro"></asp:Label></a></strong> 
                     <em><asp:Label ID="lblcurp" runat="server" Text="HELL920809HVZRZS07"></asp:Label></em>
                     <em><asp:Label ID="lbltipo" runat="server" Text="Aspirante"></asp:Label></em> 
                      </figcaption>
                  </figure>
                </section>
                    <nav class="main-navigation" role="navigation">
                      <ul>
                        <li class="current"><a href="IPersonal1.aspx" class="no-submenu"><span class="awe -user"></span>Información personal</a></li>
                  <li><a href="IPersonal2.aspx" class="no-submenu"><span class="awe-book"></span>Información Escolar o Infomración Laboral</a></li>
                  <li><a href="SolicitudPrograma.aspx" class="no-submenu"><span class="awe-file"></span>Solicitudes a Programas</a></li>
                  <li><a href="mensajes.aspx" class="no-submenu"><span class="awe-file"></span>Mensajes</a></li>
                  <li><a href="Configuracion.aspx" class="no-submenu"><span class="awe-cogs"></span>Configuración</a></li>
                  <li><a href="help.aspx" class="no-submenu"><span class="awe-file"></span>Ayuda</a></li>
                  <li><a href="#" class="no-submenu" id="logout"><span class="awe-signout"></span>Cerrar sesión</a></li>
                      </ul>
                    </nav>
            </div>
        </section>

        <div class="small-12 medium-12 large-9 columns borde_contenedor">
            <div class="large-12 columns separa_v borde_contenedor">
               <header>
                  <h4>Organizaciones Disponibles</h4>
                  <hr/>
               </header>
               <div class="large-12 columns separa_v" id="mis_s">
                  <dx:ASPxGridView ID="ASPxGridView1" runat="server" 
                    AutoGenerateColumns="False">
                    <Settings VerticalScrollBarMode="Visible" />
                    <Columns>
                        <dx:GridViewDataTextColumn VisibleIndex="0" caption = "Nombre" FieldName="Nombre" >
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn VisibleIndex="1" caption ="Teléfono" FieldName="Tel_fono">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn VisibleIndex="2" caption="Primer Contacto" FieldName="Primer_Contacto">
                        </dx:GridViewDataTextColumn>
                    </Columns>
                </dx:ASPxGridView>
               </div>
            </div>
            
            <div class="large-12 columns separa_v borde_contenedor">
               <header>
                  <h4>Disponibles Programas</h4>
                  <hr/>
               </header>
               <div class="large-12 columns separa_v" id="Div2">
                <dx:ASPxGridView ID="ASPxGridView2" runat="server" 
                    AutoGenerateColumns="False">
                      <Settings VerticalScrollBarMode="Visible" />
                    <Columns>
                        <dx:GridViewDataTextColumn VisibleIndex="0" caption = "Nombre" FieldName="Nombre" >
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn VisibleIndex="1" caption ="Responsable Programa" FieldName="ResponsablePrograma">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn VisibleIndex="2" caption="Periodo" FieldName="Periodo">
                        </dx:GridViewDataTextColumn>
                    </Columns>
                </dx:ASPxGridView>   
               </div>
            </div>

            <div class="small-12 medium-12 large-12 columns separa_v" data-equalizer="">
                <header>
                      <h4>Descripción de la Inscripción al Programa</h4>
                      <hr/>
                   </header>
                <div class="small-12 medium-12 large-6 columns borde_contenedor separa_v" data-equalizer-watch=""
                    style="height: 468px;">
                    <header>
                     <h4><span class="awe-envelope"></span> Información de la Dependencia</h4>
                     <hr>
                  </header>

                    <label class="control-label" >
                        Nombre de Dependencia
                        <asp:TextBox class="validaLetras" id="txtDependencia" type="text"  runat="server"></asp:TextBox>
                     </label>

                    <label class="control-label" >
                        Teléfono
                        <asp:TextBox class="validaLetras" id="txtTelefono" type="text" runat="server"></asp:TextBox>
                     
                     </label>

                     <label class="control-label" >
                        Persona de Contacto 
                        <asp:TextBox class="validaLetras" id="txtContacto" type="text" runat="server"></asp:TextBox>
                     </label>

                </div>
                <div class="small-12 medium-12 large-6 columns borde_contenedor separa_v" data-equalizer-watch=""
                    style="height: 468px;">
                    <header>
                     <h4><span class="awe-lock"></span> Información del Programa</h4>
                     <hr>
                  </header>
                      <label class="control-label" >
                        Nombre del Programa
                        <asp:TextBox class="validaLetras" id="TextBox1" type="text"  runat="server"></asp:TextBox>
                     </label>

                    <label class="control-label" >
                        Responsable del Programa
                        <asp:TextBox class="validaLetras" id="TextBox2" type="text" runat="server"></asp:TextBox>
                     </label>

                     <label class="control-label" >
                        Periodo
                        <asp:TextBox class="validaLetras" id="TextBox3" type="text" runat="server"></asp:TextBox>
                     </label>

                </div>
            </div>
                                    <div class="large-12 columns separa_v">
                            <asp:Button type="submit" class="btn btn-flat btn-primary button expand" id="save_org_prog" runat="server" Text="Actualizar" />
                        </div>

      </div> 
    </form>
</body>
</html>
