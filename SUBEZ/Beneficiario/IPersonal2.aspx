<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IPersonal2.aspx.cs" Inherits="SeZac.IPersonal2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
         <hr/>
      </header>
    <div class="row contenedor_gral">
        <section class="large-3 columns">
            <div class="navigation-block affix-top">
               <section class="usuario">
                  <figure> 
                  <img src="http://www.subes.sep.gob.mx/api/perfiles/foto/848690b44797674b1b2315cd70979644/3rV7/perfil.jpg" >
                  <figcaption> 
<strong><a class=""><asp:Label ID="lblNombre" runat="server" Text="Luis Angel Hernández Lázaro"></asp:Label></a></strong> 
                     <em><asp:Label ID="lblcurp" runat="server" Text="HELL920809HVZRZS07"></asp:Label></em>
                     <em><asp:Label ID="lbltipo" runat="server" Text="Aspirante"></asp:Label></em> 
                                       </figcaption>
               </figure>
            </section>
            <nav class="main-navigation" role="navigation" >
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
            <section class="side-note">
               <div class="side-note-container">
                  <h2><a href="../../archivos/tutor/informacion_personal.pdf" target="_blank">Manual de esta secci&oacute;n</a></h2>
               </div>
               <div class="side-note-bottom"></div>
            </section>
         </div>
      </section>
        <!-- SECCION MAPA -->
        <section class="large-9 columns" role="content" data-equalizer>
         <div class="large-6 columns borde_contenedor hack separa_v" data-equalizer-watch>
            <div class="large-12 columns borde_contenedor hack separa_v" >
               <header>
                  <h4><span class="awe-home"></span> Información Escolar</h4>
                  <hr/>
               </header>
               <div id="info-domic-block">
                  <div class="control-group">
                     <label class="control-label" >
                        <span class="info-pop" title="¿Qué significa?" data-content="Último grado de estudios con el que cuenta el aspirante a los programas de sezac"></span> 
                      Último grado de estudios
                      <div class="controls">
                     <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Text="Seleccione una Opción" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Doctorado" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Maestría" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Licenciatura" Value="3"></asp:ListItem>
                     </asp:DropDownList>
                        
                     </div>
                     </label>
                     

                     <label class="control-label" >
                        <span class="info-pop" title="¿Qué significa?" data-content="Institutución Académica donde se obtuvo el certificado o reconocimiento del último grado de estudios"></span> 
                      Institución Educativa donde se obtuvo el grado académico
                      <div class="controls">
                     <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Text="Seleccione una Opción" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Universidad Veracruzana" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Universidad Autónoma de Zacatecas" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Universidad Patito" Value="3"></asp:ListItem>
                     </asp:DropDownList>
                        
                     </div>
                     </label>
                     <div class="controls">
                     <label class="control-label" >
                        Carrera
                        <div class="controls">
                        <asp:TextBox class="validaLetras" id="n_int" type="text" placeholder="Ejemplo: Informática, Sistemas Conputacionales, etc."  runat="server"></asp:TextBox>
                     </div>
                     </label>
               <div class="large-12 infBasic">
                  <div class="large-12 columns separa_v_xl">
                     <asp:Button class="btn btn-flat btn-primary button expand" id="Button1" runat="server" Text="Guardar "></asp:Button>
                  </div>
               </div>      
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="large-6 columns borde_contenedor hack separa_v" data-equalizer-watch>
            
            <div class="large-12 columns borde_contenedor separa_contenedor separa_v">
               <header>
                  <h4><span class="awe-user"></span> Información Laboral</h4>
                  <hr/>
               </header>
               <div class="large-12 columns">
                  <div class="control-group">
                     <div class="row">
                        <div class="large-12 columns">
                           <label>Empresa donde Labora Actualmente
                              <asp:TextBox type="text" ID="empresa_laboral" runat="server"></asp:TextBox>
                           </label>
                        </div>
                     </div>

                     <div class="row">
                        <div class="large-12 columns">
                           <label>Puesto que Desempeña
                              <asp:TextBox type="text" ID="txt_puesto" runat="server"></asp:TextBox>
                           </label>
                        </div>
                     </div>
                     <div class="row">
                        <div class="large-12 columns">
                           <label>Nombre de Jefe Inmediato
                              <asp:TextBox type="text" ID="txt_jefe" runat="server"></asp:TextBox>
                           </label>
                        </div>
                     </div>
                     <div class="row">
                        <div class="large-12 columns">
                           <label>Teléfono Oficina
                              <asp:TextBox type="text" ID="txt_telefono_oficina" runat="server"></asp:TextBox>
                           </label>
                        </div>
                     </div>

                  </div>
               </div>
               <div class="large-12 infBasic">
                  <div class="large-12 columns separa_v_xl">
                     <asp:Button class="btn btn-flat btn-primary button expand" id="upd_info_basic" runat="server" Text="Guardar "></asp:Button>
                  </div>
               </div>
            </div>
         </div>
         </section>
    </div>
    <div class="row row_xl separa_v_xl">
        <footer align="right">
       <a href="#arriba" class="btn btn-flat btn-primary"><span class="icon-arrow-up">Ir arriba</span></a>
	   <h5>SUBEZ 2015  <a href="" class="">Políticas de privacidad </a></h5>
	</footer>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

    <script src="../Css/Script/foundation.js" type="text/javascript"></script>
    <script src="../Css/Script/responsive-tables.js" type="text/javascript"></script>
    <script src="../Css/Script/foundation.accordion.js" type="text/javascript"></script>
    <script src="../Css/Script/foundation.reveal.js" type="text/javascript"></script>
    <script src="../Css/Script/foundation.equalizer.js" type="text/javascript"></script>
    <script src="../Css/Script/foundation.alert.js" type="text/javascript"></script>
    <script src="../Css/Script/global.js" type="text/javascript"></script>
    <script src="../Css/Script/modernizr.js" type="text/javascript"></script>
    <script src="../Css/Script/selectivizr.js" type="text/javascript"></script>
    <script src="../Css/Script/pstreng.js" type="text/javascript"></script>
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
    <script type="text/javascript" src="../../static/js/navigation.js"></script>
    <script type="text/javascript" src="../../static/js/bootstrap/bootstrap-affix.js"></script>
    <script type="text/javascript" src="../../static/js/bootstrap/bootstrap-dropdown.js"></script>
    <script type="text/javascript" src="../../static/js/bootstrap/bootstrap-inputmask.js"></script>
    <script type="text/javascript" src="../../static/js/bootstrap/bootstrap-tooltip.js"></script>
    <script type="text/javascript" src="../../static/js/bootstrap/bootstrap-popover.js"></script>
    <script type="text/javascript" src="../../static/js/plugins/jGrowl/jquery.jgrowl.js"></script>
    <script type="text/javascript" src="../../static/js/bootstrap/bootstrap-transition.js"></script>
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
    <script type="text/javascript" src="../../utils/perfil/if.pe.js"></script>
    </form>
</body>
</html>
