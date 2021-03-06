﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrgConfig.aspx.cs" Inherits="SUBEZ.Organizacion.OrgConfig" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html class=" js draganddrop rgba multiplebgs borderradius boxshadow textshadow opacity">
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
<body class="body">
<form id="Form1" runat="server">
    <header class="row contenedor_gral" id="arriba">
         <div class="large-3">
            <img src="../Image/SeZac.jpg">
         </div>
         <hr>
      </header>
    <div class="row contenedor_gral">
        <section class="large-3 columns " role="main">
          <div class="navigation-block affix-top"> 
                <section class="usuario">
                     <figure> <img src="../Image/perfil.jpg">
                         <figcaption> <strong><a class=""><asp:Label ID="lblNombre" runat="server" Text="Tiendas Sorianas SA de CV"></asp:Label></a></strong> 
                        <em><asp:Label ID="lblcurp" runat="server" Text="TSO991022PB6"></asp:Label></em>
                        <em><asp:Label ID="lbltipo" runat="server" Text="Organización"></asp:Label></em>  </figcaption>
                    </figure>
                    <figure> <img src="../Image/perfil.jpg">
                         <figcaption> <strong>Estado de la Organización</figcaption>
                    </figure>
                </section>
                     <nav class="main-navigation" role="navigation">
                        <ul>
                          <li ><a href="IPersonal1.aspx" class="no-submenu"><span class="awe -user"></span>Información Organización</a></li>
                  <li class="current"><a href="SolicitudProgramaOrg.aspx" class="no-submenu"><span class="awe-file"></span>Solicitudes a Programas</a></li>
                  <li><a href="IPersonal1.aspx" class="no-submenu"><span class="awe-file"></span>Mensajes</a></li>
                  <li><a href="OrgConfig.aspx" class="no-submenu"><span class="awe-cogs"></span>Configuración</a></li>
                  <li><a href="IPersonal1.aspx" class="no-submenu"><span class="awe-file"></span>Ayuda</a></li>
                  <li><a href="../Acceso.aspx" class="no-submenu" id="logout"><span class="awe-signout"></span>Cerrar sesión</a></li>
                        </ul>
                        </nav>
             <!-- /Main navigation --> 
             
             
            </div>
      </section>
        <div class="small-12 medium-12 large-9 columns borde_contenedor">
            <div class="small-12 medium-12 large-12 columns separa_v" data-equalizer="">
                <div class="small-12 medium-12 large-6 columns borde_contenedor separa_v" data-equalizer-watch=""
                    style="height: 468px;">
                    <header>
                     <h4><span class="awe-envelope"></span> Cambio de Correo Electrónico</h4>
                     <hr>
                  </header>
                    <div id="upd-newemail-dv">
                        
                        <div class="large-12 columns separa_v">
                            <label>
                                Correo Electrónico Organizacionl Actual
                                <asp:TextBox id="email_act" type="text" class="rq uneditable-input" value="luishdezlazaro@hotmail.com"
                                    readonly="" runat="server"></asp:TextBox>

                            </label>
                            <label>
                                Contraseña Actual
                                <asp:TextBox type="password" id="chp_pass_act_" class="rq" runat="server"></asp:TextBox>
                            </label>
                        </div>
                        <div class="large-12 columns separa_v">
                            <label>
                                Correo Electrónico Nuevo
                                <asp:TextBox  type="text" id="new_email" class="rq" runat="server"></asp:TextBox>
                            </label>
                            <label>
                                Confirma Correo Electrónico
                                <asp:TextBox type="text" id="new_email_conf" class="rq" runat="server"></asp:TextBox>
                            </label>
                        </div>
                        <div class="large-12 columns separa_v">
                            <asp:Button type="submit" class="btn btn-flat btn-primary button expand" 
                                id="upd_new_email" runat="server" Text="Actualizar" 
                                onclick="upd_new_email_Click" />
                        </div>
                        
                    </div>
                </div>
                <div class="small-12 medium-12 large-6 columns borde_contenedor separa_v" data-equalizer-watch=""
                    style="height: 468px;">
                    <header>
                     <h4><span class="awe-lock"></span> Cambio de Contraseña</h4>
                     <hr>
                  </header>
                    <div id="new-pass">
                        <form>
                        <div class="large-12 columns separa_v">
                            <label>
                                Contraseña Actual
                                <asp:TextBox type="password" id="chp_pass_act" class="rq" runat="server"></asp:TextBox>
                            </label>
                        </div>
                        <div class="large-12 columns separa_v">
                            <label>
                                Contraseña Nueva
                                <asp:TextBox type="password" id="new_paswd" class="rq" runat="server"></asp:TextBox><div class="pstrength-bar" id="new-paswd_bar"
                                    style="border: 1px solid white; font-size: 1px; height: 5px; width: 0px;">
                                </div>
                                <div class="pstrength-info" id="new-paswd_text">
                                </div>
                                <div class="pstrength-minchar" id="new-paswd_minchar">
                                </div>
                            </label>
                            <label>
                                Confirma Contraseña
                                <asp:TextBox type="password" id="new_paswd_conf" class="rq" runat="server"></asp:TextBox>
                            </label>
                        </div>
                        <div class="large-12 columns separa_v">
                            <asp:Button type="submit" class="btn btn-flat btn-primary button expand" 
                                id="upd_new_paswd" runat="server" Text="Actualizar" 
                                onclick="upd_new_paswd_Click" />
                        </div>
                        </form>
                        <footer class="info" style="margin: 0px;">
                        <h5>Enviaremos la nueva contraseña a tu correo.</h5>
                     </footer>
                    </div>
                </div>
            </div>
            <div class="small-12 medium-12 large-12 columns">
                <div class="small-12 medium-12 large-6 columns borde_contenedor separa_v">
                    <header>
                     <h4><span class="awe-camera"></span> Foto de perfil</h4>
                     <hr>
                  </header>
                    <div id="holder" class="draag">
                        <div style="margin-top: 200px; margin-bottom: auto;">
                                <asp:Button class="btn btn-flat btn-primary button expand" id="upload_foto" runat="server" Text="Buscar en el equipo..." />
                        </div>
                    </div>
                    <div class="progress progress-success progress-striped active" style="margin-bottom: 9px;">
                        <div class="bar" id="progreso">
                        </div>
                    </div>
                    <footer class="info" style="margin: 0px;">
                     <h5>Tamaño recomendado 200 x 200 pixeles.</h5>
                  </footer>
                </div>
                <div class="row custom-file">
                    <form id="foto-form" action="" method="post" enctype="multipart/form-data">
                    <input id="up-foto" type="file" accept="image/*">
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="row row_xl separa_v_xl">
        <footer align="right">
       <a href="http://www.SUBEZ.sep.gob.mx/perfil/configuracion/#arriba" class="btn btn-flat btn-primary"><span class="icon-arrow-up">Ir arriba</span></a>
	   <h5>SUBEZ 2015  <a href="http://www.SUBEZ.sep.gob.mx/politicas-de-privacidad/" class="">Políticas de privacidad</a></h5><a href="http://www.SUBEZ.sep.gob.mx/politicas-de-privacidad/" class="">
	</a></footer>
        <a href="http://www.SUBEZ.sep.gob.mx/politicas-de-privacidad/" class=""></a>
    </div>
    <a href="http://www.SUBEZ.sep.gob.mx/politicas-de-privacidad/" class="">
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
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date(); a = s.createElement(o),
m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
            ga('create', 'UA-42955936-1', 'auto');
            ga('send', 'pageview');
        </script>
        <script type="text/javascript" src="./SUBEZ_files/navigation.js"></script>
        <script type="text/javascript" src="./SUBEZ_files/bootstrap-affix.js"></script>
        <script type="text/javascript" src="./SUBEZ_files/bootstrap-dropdown.js"></script>
        <script type="text/javascript" src="./SUBEZ_files/bootstrap-inputmask.js"></script>
        <script type="text/javascript" src="./SUBEZ_files/bootstrap-tooltip.js"></script>
        <script type="text/javascript" src="./SUBEZ_files/bootstrap-popover.js"></script>
        <script type="text/javascript" src="./SUBEZ_files/jquery.jgrowl.js"></script>
        <script type="text/javascript" src="./SUBEZ_files/bootstrap-transition.js"></script>
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
        <script type="text/javascript" src="./SUBEZ_files/conf.js"></script>
        <script>
            $(document).foundation();
        </script>
    </a>
    </form>
</body>
</html>
