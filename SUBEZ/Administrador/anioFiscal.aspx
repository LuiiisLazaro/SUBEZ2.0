﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="anioFiscal.aspx.cs" Inherits="SUBEZ.Administrador.anioFiscal" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

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
  <form runat="server">
      <header class="row contenedor_gral" id="arriba">
         <div class="large-3">
            <img src="../Image/SeZac.jpg" />
         </div>
         <hr>
      </header>    <div class="row contenedor_gral">
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
               <div class="hero-unit titulo-secc">
                  <h4>Años Fiscales</h4>
                  <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Agregar Año Fiscal" 
                                Theme="Office2003Olive">
                            </dx:ASPxButton>
                        </a>
                            <dx:ASPxButton ID="ASPxButton2" runat="server" Text="Actualizar Año" 
                                Theme="Office2003Olive">
                            </dx:ASPxButton>
                            <dx:ASPxButton ID="ASPxButton3" runat="server" Text="Guardar Cambios" 
                                Theme="Office2003Olive" Width="124px">
                            </dx:ASPxButton>
               </div>
               
               <div class="data-container">
                                           <dx:ASPxGridView ID="ASPxGridView1" runat="server" Theme="DevEx" 
                                    EnableTheming="True" AutoGenerateColumns="False">
                                <Columns>
                                    <dx:GridViewDataColumn Caption="Identificador de Año" FieldName="UserName" Settings-AllowSort="True"   VisibleIndex="0">
                                    </dx:GridViewDataColumn>
                                    <dx:GridViewDataColumn Caption="Inicio de Año" FieldName="UserName" Settings-AllowSort="True"   VisibleIndex="0">
                                    </dx:GridViewDataColumn>
                                    <dx:GridViewDataColumn Caption="Fin de Año" FieldName="UserName" Settings-AllowSort="True"   VisibleIndex="0">
                                    </dx:GridViewDataColumn>
                                </Columns>
                                    <Settings ShowFilterRow="True" />
                            </dx:ASPxGridView>

                  </div>
               </div>
            </div>
            <div id="mens-alert"></div>
            
        </div> 
    </div>
    <div class="row row_xl separa_v_xl">
	<footer align="right">
       <a href="http://www.SUBEZ.sep.gob.mx/perfil/solicitudes/#arriba" class="btn btn-flat btn-primary"><span class="icon-arrow-up">Ir arriba </span></a>
	   <h5>SUBEZ 2015  <a href="http://www.SUBEZ.sep.gob.mx/politicas-de-privacidad/" class="">Políticas de privacidad</a></h5><a href="http://www.SUBEZ.sep.gob.mx/politicas-de-privacidad/" class="">
	</a></footer><a href="http://www.SUBEZ.sep.gob.mx/politicas-de-privacidad/" class="">
</a></div><a href="http://www.SUBEZ.sep.gob.mx/politicas-de-privacidad/" class="">
<script src="../Image/jquery.min.js"></script>
<script type="text/javascript" src="../Image/foundation.js"></script>
<script type="text/javascript" src="../Image/responsive-tables.js"></script>
<script type="text/javascript" src="../Image/foundation.accordion.js"></script>
<script type="text/javascript" src="../Image/foundation.reveal.js"></script>
<script type="text/javascript" src="../Image/foundation.equalizer.js"></script>
<script type="text/javascript" src="../Image/foundation.alert.js"></script>
<script type="text/javascript" src="../Image/global.js"></script>
<script type="text/javascript" src="../Image/modernizr.js"></script>
<script type="text/javascript" src="../Image/selectivizr.js"></script>
<script type="text/javascript" src="../Image/pstreng.js"></script>
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
    ga('create', 'UA-42955936-1', 'auto');
    ga('send', 'pageview');
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript" src="../../base_cnbes/js/foundation/foundation.js"></script>
<script type="text/javascript" src="../../base_cnbes/js/foundation/responsive-tables.js"></script>
<script type="text/javascript" src="../../base_cnbes/js/foundation/foundation.accordion.js"></script>
<script type="text/javascript" src="../../base_cnbes/js/foundation/foundation.reveal.js"></script>
<script type="text/javascript" src="../../base_cnbes/js/foundation/foundation.equalizer.js"></script>
<script type="text/javascript" src="../../base_cnbes/js/foundation/foundation.alert.js"></script>
<script type="text/javascript" src="../../utils/perfil/global.js"></script>
<script type="text/javascript" src="../../static/js/libs/modernizr.js"></script>
<script type="text/javascript" src="../../static/js/libs/selectivizr.js"></script>
<script type="text/javascript" src="../../static/js/libs/pstreng.js"></script>
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
    ga('create', 'UA-42955936-1', 'auto');
    ga('send', 'pageview');
</script>
<script src="../Css/Script/navigation.js" type="text/javascript"></script>
        <script src="../Css/Script/bootstrap-affix.js" type="text/javascript"></script>
        <script src="../Css/Script/bootstrap-dropdown.js" type="text/javascript"></script>
        <script type="text/javascript" src="../../static/js/navigation.js"></script>
        <script src="../Css/Script/bootstrap-inputmask.js" type="text/javascript"></script>
        <script src="../Css/Script/bootstrap-tooltip.js" type="text/javascript"></script>
        <script src="../Css/Script/bootstrap-popover.js" type="text/javascript"></script>
        <script src="../Css/Script/jquery.jgrowl.js" type="text/javascript"></script>
        <script src="../Css/Script/bootstrap-transition.js" type="text/javascript"></script>
<script>
    $(document).ready(function () {
        $(".valida_modulo").click(function () {
            valida_mod($(this).attr("id"), '1|2|3|4|7|8|9', $(this).attr("name"));
        })
    });
</script>
<script>
    $(document).foundation();
</script>
<script>
    $(document).on('close.fndtn.alert', function (event) {
        console.info('An alert box has been closed!');
    });
</script>
    <script type="text/javascript" src="../../utils/perfil/solicitud.js"></script>
    </form>
  </body>
</html>

