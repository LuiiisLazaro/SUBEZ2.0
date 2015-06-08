<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Acceso.aspx.cs" Inherits="SeZac.Acceso" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class="no-js">
<head>
    <title>SUBEZ</title>
    <meta name="description" content="" />
    <meta name="author" content="Blue Team CIMAT" />
    <meta name="robots" content="index, follow" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="../Css/Style/foundation.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/foundation.css" rel="stylesheet" type="text/css" />
    <script src="../Css/Script/responsive-tables.js" type="text/javascript"></script>
    <link href="../Css/Style/jquery.visualize.css" rel="stylesheet" type="text/css" />
    <link href="Css/Style/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/foundation.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/jquery.jgrowl.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/responsive-tables.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/jquery.visualize.css" rel="stylesheet" type="text/css" />
    <link href="Css/Style/cnbes.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico">
    <link rel="icon" href="../../sep.png" type="image/x-icon">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../me/static/img/icons/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../me/static/img/icons/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../me/static/img/icons/apple-touch-icon-57-precomposed.png">
    <script type="text/css" src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>
    <meta class="foundation-data-attribute-namespace" />
    <meta class="foundation-mq-xxlarge" />
    <meta class="foundation-mq-xlarge-only" />
    <meta class="foundation-mq-xlarge" />
    <meta class="foundation-mq-large-only">
    <meta class="foundation-mq-large">
    <meta class="foundation-mq-medium-only">
    <meta class="foundation-mq-medium">
    <meta class="foundation-mq-small-only">
    <meta class="foundation-mq-small">
    <style></style>
</head>
<body class="">
    <form id="principal" runat="server">
    <div class="row">
        <div class="small-6 medium-6 large-6 columns">
            <div class="small-11 medium-9 large-7 columns">
                <img src="../Image/SeZac.jpg" />
            </div>
        </div>
        <div class="small-6 medium-6 large-6 columns">
            <div class="small-11 medium-9 large-7 columns derecha">
                <img src="../Image/SeZac2.jpg" />
            </div>
        </div>
    </div>
    <div class="row fondo_gris">
        <div class="small-12 medium-12 large-12 columns" align="center">
            <div class="small-12 medium-12 large-3 columns" align="center">
                <h3>
                    Bienvenid@
                </h3>
            </div>
            <div class="small-12 medium-12 large-3 columns no_padding separa_v" align="center">
                &nbsp;</div>
            <div class="small-12 medium-12 large-6 columns" align="justify">
                <h5>
                    El Sistema Único de Beneficiarios de Estado de Zacactecas integra tu información
                    en un sólo lugar.</h5>
            </div>
        </div>
        <div class="small-12 medium-12 large-6 columns">
            <div class="small-12 medium-12 large-12 columns">
                <header class="small-12 medium-12 large-12 columns">
                  <div class="small-2 medium-2 large-1 columns separa_v_xl no_padding" align="center">
                     <img src="../Image/ico_user.png"/>
                  </div>
                  <div class="small-10 medium-10 large-11 columns separa_v_xl" align="justify">
                     <h4>Ingresa como Beneficiario.</h4>
                  </div>
               </header>
                <div class="small-12 medium-6 large-6 columns separa_v">
                    <asp:TextBox ID="txtCURP" class="large-12.columns" onkeyup="this.value=this.value.toUpperCase();"
                        MaxLength="18" placeholder="CURP" runat="server"></asp:TextBox>
                </div>
                <div class="small-12 medium-6 large-6 columns separa_v">
                    <asp:TextBox ID="txtPassWord" class="large-12.columns" placeholder="CONTRASEÑA" runat="server"></asp:TextBox>
                    &nbsp;</div>
                <div class="small-12 medium-12 large-12 columns separa_v">
                    <asp:Button ID="btnLogin" class="btn btn-flat btn-primary button expand" runat="server"
                        Text="Inicia sesión" onclick="btnLogin_Click" />
                </div>
                <div class="small-12 medium-12 large-12 columns separa_v" id="msg-form-lg-a">
                </div>
                <div class="small-12 medium-12 large-12 columns separa_v" align="right">
                    <a data-toggle="modal" data-reveal-id="recupera" href="RecuperarPassWord.aspx?Opcion=Beneficiario" class="enlace">
                        No recuerdo mi contraseña</a>
                </div>
                <div class="small-12 medium-6 large-6 columns separa_v" align="right">
                    <h5>
                        ¿No tienes una cuenta?</h5>
                </div>
                <div class="small-12 medium-6 large-6 columns separa_v">
                    <asp:Button ID="btnRegistrar" runat="server" class="btn btn-flat button expand enlace"
                        Text="¡Regístrate ahora!" OnClick="btnRegistrar_Click" />
                </div>
            </div>
            <div class="small-12 medium-12 large-12 columns">
                <header class="small-12 medium-12 large-12 columns">
                  <div class="small-2 medium-2 large-1 columns separa_v_xl no_padding" align="center">
                     <img src="../Image/ico_inst.png">
                  </div>
                  <div class="small-10 medium-10 large-11 columns separa_v_xl" align="justify">
                     <h4>Ingresa como Empresa.</h4>
                  </div>
               </header>
                <div class="small-12 medium-6 large-6 columns separa_v">
                    <asp:TextBox ID="txtEmpresa"  class="large-12.columns" onkeyup="this.value=this.value.toUpperCase();"
                        maxlength="18" placeholder="USUARIO" runat="server"></asp:TextBox>
                </div>
                <div class="small-12 medium-6 large-6 columns separa_v">
                    <asp:TextBox ID="txtPassEmpresa" class="large-12.columns"  name="lg-pass_inst"
                        placeholder="CONTRASEÑA" runat="server"></asp:TextBox>
                </div>
                <div class="small-12 medium-12 large-12 columns separa_v">
                    <asp:Button ID="btnLoginEmpresa" Text="Inicia sesión" 
                        class="btn btn-flat btn-primary button expand" runat="server" 
                        onclick="btnLoginEmpresa_Click"></asp:Button>
                </div>
                <div class="small-12 medium-12 large-12 columns separa_v" id="msg-form-lg-i">
                </div>
            </div>
        </div>
        <div class="small-12 medium-12 large-6 columns">
            <div class="small-12 medium-12 large-12 columns">
                <div class="small-2 medium-2 large-2 columns separa_v_xl no_padding" align="center">
                    <img src="../Image/ico_msg.png" />
                </div>
                <div class="small-10 medium-10 large-10 columns separa_v_xl" align="justify">
                    <h5>
                        ¡Consulta tus “Mensajes” del SUBEZ!</h5>
                    <h5>
                        Toda la información de la beca llega a está sección.</h5>
                </div>
            </div>
            <div class="small-12 medium-12 large-12 columns">
                <div class="small-2 medium-2 large-2 columns separa_v_xl no_padding" align="center">
                    <img alt="" src="../Image/ico_info.png" style="width: 80%">
                </div>
                <div class="small-10 medium-10 large-10 columns separa_v_xl" align="justify">
                    <h5>
                        ¿Tienes dudas?</h5>
                    <h4>
                        <a href="../manual_general.pdf" target="_blank" class="rojo">Manual de usuario</a>.</h4>
                </div>
            </div>
            <div class="small-12 medium-12 large-12 columns">
                <div class="small-2 medium-2 large-2 columns separa_v_xl no_padding" align="center">
                    <img alt="" src="../Image/ico_movil.png" style="width: 75%">
                </div>
                <div class="small-10 medium-10 large-10 columns separa_v_xl" align="justify">
                    <h5>
                        ¡El SUBEZ también es móvil!</h5>
                    <h5>
                        Ingresa al SUBEZ desde cualquier dispositivo móvil.</h5>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="small-12 medium-12 large-12 columns separa_v_xl" align="right">
            <a href="../politicas-de-privacidad/" target="_blank" class="enlace">Politicas de privacidad</a>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>
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
    </form>
</body>
</html>
