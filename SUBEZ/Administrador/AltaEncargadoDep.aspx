<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaEncargadoDep.aspx.cs"
    Inherits="SUBEZ.Administrador.AltaEncargadoDep1" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
    <script language="javascript" type="text/javascript">
    </script>
</head>
<body>
<form id="form1" runat="server">

    <header class="row contenedor_gral" id="arriba">
         <div class="large-3">
            <img src="../Image/SeZac.jpg" />
         </div>
         <hr>
      </header>    
      <div class="row contenedor_gral">
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
                                                                                    <li class="current"><a href="administracionDependencias.aspx" class="no-submenu"><span class="awe -user"></span>Dependencia</a></li>
                  <li><a href="AltaEncargadoDep.aspx" class="no-submenu"><span class="awe-book"></span>Encargado de Dependencia</a></li>                  
                  <li><a href="registroAnios.aspx" class="no-submenu"><span class="awe-cogs"></span>Año fiscal</a></li>
                  <li><a href="help.aspx" class="no-submenu"><span class="awe-file"></span>Ayuda</a></li>
                  <li><a href="#" class="no-submenu" id="logout"><span class="awe-signout"></span>Cerrar sesión</a></li>

                      </ul>
                    </nav>
            </div>
        </section>  


       <!-- SECCION TABLA -->

         <div class="small-12 medium-12 large-9 columns borde_contenedor" role="main">
            <div class="large-12 columns separa_v borde_contenedor">
               <header>
                  <h4>Administración Encargados de Dependencias</h4>
                  <hr>
               </header>
               <div class="large-12 columns separa_v" id="mis_s">
                  <a href="RegistrosEncargados.aspx">
                            <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Agregar Encargado de Dependencia" 
                                Theme="Office2003Olive">
                            </dx:ASPxButton>
                        </a>
                            <dx:ASPxButton ID="ASPxButton2" runat="server" Text="Actualizar Encargado" 
                                Theme="Office2003Olive">
                            </dx:ASPxButton>
                            <dx:ASPxButton ID="ASPxButton3" runat="server" Text="Guardar Cambios" 
                                Theme="Office2003Olive" Width="124px">
                            </dx:ASPxButton>
                                <dx:ASPxGridView class="large-15 columns separa_v" ID="ASPxGridView1" runat="server" Theme="DevEx" 
                                    EnableTheming="True" AutoGenerateColumns="False">
                                   <Columns>
                                    <dx:GridViewDataColumn Caption="Nombre Encargado" FieldName="nombre" Settings-AllowSort="True"   VisibleIndex="0">
                                    </dx:GridViewDataColumn>
                                    <dx:GridViewDataColumn Caption="Estado" FieldName="estado" Settings-AllowSort="True"   VisibleIndex="0">
                                    </dx:GridViewDataColumn>
                                    <dx:GridViewDataColumn Caption="Dependencia" FieldName="telefonoOficina" Settings-AllowSort="True"   VisibleIndex="0">
                                    </dx:GridViewDataColumn>
                                    <dx:GridViewDataColumn Caption="Departamento" FieldName="fechaAlta" Settings-AllowSort="True"   VisibleIndex="0">
                                    </dx:GridViewDataColumn>
                                    <dx:GridViewDataColumn Caption="Correo Electrónico" FieldName="correoElectronico" Settings-AllowSort="True"   VisibleIndex="0">
                                    </dx:GridViewDataColumn>
                                    <dx:GridViewDataColumn Caption="Teléfono Oficina" FieldName="telefonoOficina" Settings-AllowSort="True"   VisibleIndex="0">
                                    </dx:GridViewDataColumn>
                                </Columns>
                            <Settings ShowFilterRow="True" />
                            </dx:ASPxGridView>
                            </div>
            </div>
            </div>
        </div> 

     </form>
</body>
</html>

