<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecuperarPassWord.aspx.cs"
    Inherits="SUBEZ.RecuperarPassWord" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
</head>
<body>
    <form id="form1" runat="server">
    <div class="small-12 medium-12 large-6 columns">
        <div id="recupera" class="small-12 medium-12 large-12 columns" data-reveal="" aria-labelledby="modalTitle"
            aria-hidden="true" role="dialog">
            <h2 id="modalTitle">
                Olvidaste tu contraseña.</h2>
            <p class="lead">
                Para la Secretaria de Economía  es muy importante mantener
                comunicación contigo a través del SUBEZ.</p>
            <div class="small-12 medium-12 large-12 columns separa_v" align="right">
                <div class="small-12 medium-6 large-6 columns separa_v" align="right">
                    <label for="curp-restore">
                        Ingresa tu CURP para recuperar tu contraseña:<label>
                        </label>
                    </label>
                </div>
                <div class="small-12 medium-6 large-6 columns separa_v" align="left">
                    <asp:TextBox ID="txtCURP" class="large-12.columns" onkeyup="this.value=this.value.toUpperCase();"
                        maxlength="18" placeholder="CURP" runat="server"></asp:TextBox>                   
                </div>
            </div>
            <div id="msg-restore">
            </div>
            <div class="small-12 medium-8 large-4 columns derecha separa_v">
                <asp:Button ID="btnRecuperar" class="btn btn-flat btn-primary button expand"  
                    runat="server" Text="Recuperar contraseña" onclick="btnRecuperar_Click" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
