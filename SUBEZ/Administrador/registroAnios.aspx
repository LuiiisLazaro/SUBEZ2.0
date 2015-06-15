<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registroAnios.aspx.cs" Inherits="SUBEZ.Administrador.registroAnios" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<style>
    #mens-alert
    {
        position: fixed;
        top: 10px;
        text-align: center;
        width: 60%;
        z-index: 99999;

    }

    @media screen and (max-width: 1120px){
        #mens-alert {
            position: fixed;
            top: 20px;
            width: 100%;
            z-index: 99999;
        }
    }
</style>

   <!DOCTYPE html>
<html class="no-js">
   <head>
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
    
    <link rel="icon" href="../../sep.png" type="image/x-icon">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../me/static/img/icons/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../me/static/img/icons/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../me/static/img/icons/apple-touch-icon-57-precomposed.png">
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>
   </head>
  <body class="body">
<form id="Form1" runat="server">
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
                  <h4>Registro de Año Fiscal</h4>
                  <hr>
               </header>
                <div class="large-12 columns separa_v" id="mis_s">
                    <div class="row">
                        <div class="large-12 columns">
                            <label>
                                Nombre (Identificador del Año Fiscal)
                                <asp:TextBox type="text" placeholder="Nombre del Año Fiscal" ID="txtNombre" runat="server"></asp:TextBox>
                            </label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="large-6 columns">
                            <label>
                                Fecha de Inicio
                                <asp:Calendar ID="txtInicio" runat="server"></asp:Calendar>
                            </label>
                        </div>

                        <div class="large-6 columns">
                            <label>
                                Fecha Final
                                <asp:Calendar ID="txtFinal" runat="server"></asp:Calendar>
                            </label>
                        </div>
                    </div>

                        <div class="large-12 columns separa_v">
                            <asp:Button type="submit" class="btn btn-flat btn-primary button expand" 
                                id="btnSave" runat="server" Text="Guardar Año Fiscal" />
                        </div>

                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>

