﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dependencias.aspx.cs" Inherits="SUBEZ.Administrador.Dependencias" %>

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
            <img src="../Image/SeZac.jpg">
         </div>
         <hr>
      </header>

       <nav class="main-navigation" role="navigation">
            <ul>
                  <li ><a href="InfomarcionPersonal.aspx" class="no-submenu"><span class="awe-user"></span>Dependencia</a></li>
                  <li ><a href="InfoEscolar.aspx" class="no-submenu"><span class="awe-book"></span>Encargados de dependencia</a></li>
                  <li ><a href="SolicitudBeca.aspx" class="no-submenu"><span class="awe-file"></span>Años fiscales</a></li>
                  <li class="current"><a href="Configuracion.aspx" class="no-submenu"><span class="awe-cogs"></span>Ayuda</a></li>
                  <li><a href="#" class="no-submenu" id="logout"><span class="awe-signout"></span>Cerrar sesión</a></li>
            </ul>
        </nav>
        </header>
   
      <header>
                     <h4><span class="awe-camera"></span> Administracion Dependencias</h4>
                     <hr>
                  </header>
                    <div id="holder" class="draag">
                        <div style="margin-top: 200px; margin-bottom: auto;">
                            <button class="btn btn-flat btn-primary button expand" id="upload-foto" onclick="return upload-foto_onclick()">
                                Agregar Dependencias</button>
                           
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
    </form>
</body>
</html>
