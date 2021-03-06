﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SolicitudPrograma.aspx.cs" Inherits="SeZac.Beneficiario.SolicitudPrograma" %>

<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

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
      <form id="form1" runat="server">
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
                        <li ><a href="IPersonal1.aspx" class="no-submenu"><span class="awe -user"></span>Información personal</a></li>
                  <li ><a href="IPersonal2.aspx" class="no-submenu"><span class="awe-book"></span>Información Escolar o Infomración Laboral</a></li>
                  <li class="current"><a href="SolicitudPrograma.aspx" class="no-submenu"><span class="awe-file"></span>Solicitudes a Programas</a></li>
                  <li><a href="IPersonal1.aspx" class="no-submenu"><span class="awe-file"></span>Mensajes</a></li>
                  <li ><a href="Configuracion.aspx" class="no-submenu"><span class="awe-cogs"></span>Configuración</a></li>
                  <li><a href="IPersonal1.aspx" class="no-submenu"><span class="awe-file"></span>Ayuda</a></li>
                  <li><a href="../Acceso.aspx"" class="no-submenu" id="logout"><span class="awe-signout"></span>Cerrar sesión</a></li>
                      </ul>
                    </nav>


                    <section class="side-note">
                      <div class="side-note-container">
                        <h2><a href="http://www.SUBEZ.sep.gob.mx/archivos/tutor/solicitudes.pdf" target="_blank">Manual de esta sección</a></h2>
                        <p></p>
                      </div>
                      <div class="side-note-bottom"></div>
                    </section>
            </div>
        </section>  


       <!-- SECCION TABLA -->

         <div class="small-12 medium-12 large-9 columns borde_contenedor" role="main">
            <div class="large-12 columns separa_v borde_contenedor">
               <header>
                  <h4>Mis Solicitudes</h4>
               </header>
                  <hr>
               <div class="large-12 columns separa_v" id="mis_s">
                  <div class="small-12 medium-3 large-3 columns separa_v">
                   <asp:Button class="btn btn-flat btn-primary button expand" ID="btnAgregarPrograma" 
                          runat="server" Text="Exporta a Excel" onclick="btnAgregarPrograma_Click" />
               </div>
               <div class="small-12 medium-3 large-3 columns separa_v">
                  <asp:Button class="btn btn-flat btn-primary button expand" ID="btnActualizar" 
                       runat="server" Text="Exporta a Word" onclick="btnActualizar_Click" />
               </div>
               <div class="small-12 medium-3 large-3 columns separa_v">
                  <asp:Button class="btn btn-flat btn-primary button expand" 
                       ID="btnGuardarCambios" runat="server" Text="Exporta a PDF" 
                       onclick="btnGuardarCambios_Click" />
               </div>
               <div class="large-12 columns separa_v" id="Div1">
               <header>
                  <h4>Busquedas:</h4>
               </header>
                   <dx:ASPxGridView ID="gvSolicitudes" runat="server" onload="gvSolicitudes_Load" 
                       Theme="iOS" AutoGenerateColumns="False">
                       <Settings ShowFilterRow="True" />
                       <SettingsSearchPanel Visible="True" />
                       <Columns>
                       <dx:GridViewDataColumn Caption="PROGRAMA" FieldName="Programa" Settings-AllowSort="True">
<Settings AllowSort="True"></Settings>
                           </dx:GridViewDataColumn>
                       <dx:GridViewDataColumn Caption="PERIODO" FieldName="Periodo" Settings-AllowSort="True">
<Settings AllowSort="True"></Settings>
                           </dx:GridViewDataColumn>
                       <dx:GridViewDataColumn Caption="ESTADO" FieldName="Estado" Settings-AllowSort="True">
<Settings AllowSort="True"></Settings>
                           </dx:GridViewDataColumn>
                       </Columns>
                       <SettingsPager PageSize="10">
                        <PageSizeItemSettings Visible="true" ShowAllItem="true" />
                        </SettingsPager>
                   </dx:ASPxGridView>
                   <dx:ASPxGridViewExporter ID="Xporter" GridViewID="gvSolicitudes" runat="server"></dx:ASPxGridViewExporter>
               </div>
               </div>
            </div>
            <div class="large-12 columns separa_v borde_contenedor">
               <div class="hero-unit titulo-secc">
                  <h4>Programas Disponibles</h4>
                  <hr>
               </div>
               <div id="mensaje"></div>
               <div class="data-container">
                  <div class="row" id="contenedor">
                     <div class="large-4 columns" id="div_ordena" style="display: block;">  
                     </div>
                  <div class="large-12 columns"><div class="small-12 medium-4 large-4 columns">
                    <div style="background:#9DD06B;padding:8px 12px 8px 20px;" class="banner"/>
                    <h5><b>PROGRAMA "CERTIFICACIÓN EN JAVA "PRIMERA ETAPA GENERACION 2015-2017</b></h5><h5>Monto total: <strong>$26000</strong>
                    </h5><p class="point"><a data-toggle="modal" data-reveal-id="confirma" href="http://www.SUBEZ.sep.gob.mx/perfil/solicitudes/#" "="" class="valida_compa" id="compatible_266" name="266">
                    <span class="awe-random point"></span><span class="point"> Compatibilidad con otros programas</span></a><a target="_blank" href="http://168.255.101.19/sites/default/files/Maestria_FrancoMexicano_etapa1.pdf"></a></p><p class="point"><a target="_blank" href="http://168.255.101.19/sites/default/files/Maestria_FrancoMexicano_etapa1.pdf"><span class="awe-list-alt"></span> Detalles del programa</a></p> <div align="right"><button class="btn btn-flat btn-primary button expand val_solicitud " ruta="../../cuestionarios/CuestionarioPosgInterConveniosAlumnos2015/" name="148|140|" gpo="384" id="btn_266" diri="ALUMNOS" tcar="A" acar="2015" incompa="">Solicitar esta Programa</button></div></div><div id="c266"></div></div><div class="small-12 medium-4 large-4 columns"> <div style="background:#9DD06B;padding:8px 12px 8px 20px;" class="banner"><h5><b>
                      PROGRAMA CERTIFICACIÓN EN MANEJO DE BASE DE DATOS</b></h5><h5>Monto total: <strong>$23000</strong></h5><p class="point"><a data-toggle="modal" data-reveal-id="confirma" href="http://www.SUBEZ.sep.gob.mx/perfil/solicitudes/#" "="" class="valida_compa" id="compatible_267" name="267"><span class="awe-random point"></span><span class="point"> Compatibilidad con otros 
                      programas</span></a><a target="_blank" href="http://168.255.101.19/sites/default/files/Maestria_FrancoMexicano_etapa2.pdf"></a></p><p class="point"><a target="_blank" href="http://168.255.101.19/sites/default/files/Maestria_FrancoMexicano_etapa2.pdf"><span class="awe-list-alt"></span> Detalles del programa</a></p> <div align="right"><button class="btn btn-flat btn-primary button expand val_solicitud " ruta="../../cuestionarios/CuestionarioPosgInterConveniosAlumnos2015/" name="98|267|" gpo="384" id="btn_267" diri="ALUMNOS" tcar="A" acar="2015" incompa="">Solicitar este programa</button></div></div><div id="c267"></div></div></div></div>
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

