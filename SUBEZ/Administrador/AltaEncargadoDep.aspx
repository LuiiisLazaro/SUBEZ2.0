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
// <![CDATA[

function upload-foto_onclick() {

}

// ]]>
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <header class="row contenedor_gral" id="arriba">
         <div class="large-3">
            <img src="../Image/SeZac.jpg">
         </div>
         <hr>
      </header>
     
        <nav class="main-navigation" role="navigation">
            <ul >
                  <li class="current"><a href="InfomarcionPersonal.aspx" class="no-submenu"><span class="awe-user"></span>Dependencia</a></li>
                  <li class="current"><a href="InfoEscolar.aspx" class="no-submenu"><span class="awe-book"></span>Encargados de dependencia</a></li>
                  <li class="current"><a href="SolicitudBeca.aspx" class="no-submenu"><span class="awe-file"></span>Años fiscales</a></li>
                  <li class="current"><a href="Configuracion.aspx" class="no-submenu"><span class="awe-cogs"></span>Ayuda</a></li>
                  <li class="current"><a href="#" class="no-submenu" id="logout"><span class="awe-signout"></span>Cerrar sesión</a></li>
            </ul>
        </nav>
        </header>
        <header>
            
               <div class="side-note-container">
                  <h2>Alta Encargado de Dependencia</h2>
               </div>
               <div class="side-note-bottom"></div>
           
           
        </header>
         <hr>


        <div id="holder" class="draag">
            <div style="margin-top: 30px; margin-bottom: auto;">
                <label>
                    Busqueda
                    <input type="text" placeholder="QUE BUSCAS?" readonly />
                </label>
                <label class="control-label">
                    <span class="info-pop" title="¿Qué significa?" data-content="Estado civil del aspirante.">
                    </span>Criterio</label>
                <div class="controls">
                    <select id="edo_civ" class="input-xlarge rq" onclick="return edo_civ_onclick()">
                        <option value=" ">Selecciona Dependencia</option>
                        <option value="1">Dependencia 1</option>
                        <option value="2">Dependencia 2</option>
                        <option value="3">Dependencia 3</option>
                        <option value="4">Dependencia 4</option>
                        <option value="5">Dependencia 5</option>
                        <option value="6">Dependencia 6</option>
                    </select>
                </div>
                <button class="btn btn-flat btn-primary button expand" id="upload-foto" onclick="return upload-foto_onclick()"
                    onclick="return upload-foto_onclick()">
                    Agregar Encargado</button>
                <button class="btn btn-flat btn-primary button expand" id="Button1" onclick="return upload-foto_onclick()"
                    onclick="return upload-foto_onclick()">
                    Actualizar Encargado</button>
                <button class="btn btn-flat btn-primary button expand" id="Button2" onclick="return upload-foto_onclick()"
                    onclick="return upload-foto_onclick()">
                    Guardar Cambios</button>

          <table>
             <tr>
                <td>
                    <dx:ASPxGridView ID="ASPxGridView1" runat="server" Theme="DevEx" 
                       EnableTheming="True" AutoGenerateColumns="False">
                        <Columns>
                            <dx:GridViewDataColumn Caption="Nombre" FieldName="UserName" Settings-AllowSort="True"   VisibleIndex="0">
                            </dx:GridViewDataColumn>
                        </Columns>
                        <Settings ShowFilterRow="True" />
                    </dx:ASPxGridView>
                </td>
            </tr>
        </table>

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
    </div>
    </form>
</body>
</html>
