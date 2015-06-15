<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroDependencia.aspx.cs"
    Inherits="SUBEZ.Administrador.RegistroDependencia" %>

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
        <div class="small-12 medium-12 large-9 columns borde_contenedor" role="main">
            <div class="large-12 columns separa_v borde_contenedor">
                <header>
                  <h4>Registro de Dependencias</h4>
                  <hr>
               </header>
                <div class="large-12 columns separa_v" id="mis_s">
                    <div class="row">
                        <div class="large-12 columns">
                            <label>
                                Nombre de Dependencia
                                <asp:TextBox type="text" placeholder="NOMBRE DEPENDENCIA" ID="txtDependencia" runat="server"></asp:TextBox>
                            </label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="large-12 columns">
                            <label>
                                Director
                                <asp:TextBox type="text" placeholder="NOMBRE DIRECTOR" ID="txtDirector" runat="server"></asp:TextBox>
                            </label>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="large-12 columns">
                            <label>
                                Teléfono Fijo con Lada Local
                                <asp:TextBox id="tel_fij" type="text" placeholder="Escribe 10 digitos" data-mask="999-999-99-99"
                                class="rq validaLetras" runat="server"></asp:TextBox>
                            </label>
                        </div>
                    </div> 

                    <div class="row">
                        <div class="large-12 columns">
                            <label>
                                Teléfono Celular (10 números)
                                <asp:TextBox id="tel_cel" type="text" placeholder="Escribe 10 digitos" data-mask="99-99-99-99-99"
                                class="rq validaLetras" runat="server"></asp:TextBox>
                            </label>
                        </div>
                    </div> 

                    <header>
                        <h4>Primer Contacto</h4>
                        <hr>
                    </header>
                    <div class="row">
                        <div class="large-12 columns">
                            <label>
                                Nombre(s)
                                <asp:TextBox type="text" placeholder="Nombre de la Persona de Primer Contacto" ID="txtNombrePrimerContacto" runat="server"></asp:TextBox>
                            </label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="large-12 columns">
                            <label>
                                Apellido Paterno
                                <asp:TextBox type="text" placeholder="Apellido Paterno de la Persona de Primer Contacto" ID="txtPaterno" runat="server"></asp:TextBox>
                            </label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="large-12 columns">
                            <label>
                                Apellido Materno
                                <asp:TextBox type="text" placeholder="Apellido Materno de la Persona de Primer Contacto" ID="txtMaterno" runat="server"></asp:TextBox>
                            </label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="large-28 columns">
                            <label>
                                Correo Electrónico Actual
                                <asp:TextBox placeholder="Correo Electrónico de la Persona de Primer Contacto" type="text" id="email_act" runat="server"></asp:TextBox>
                            </label>
                        </div>
                    </div>

                    <div class="large-12 columns separa_v">
                            <asp:Button type="submit" class="btn btn-flat btn-primary button expand" 
                                id="upd_new_email" runat="server" Text="Guardar Dependencia" />
                        </div>

                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
