<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroUsuario.aspx.cs"
    Inherits="SUBEZ.RegistroUsuario" %>

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
        <div id="registro" class="small-12 medium-12 large-12 columns" data-reveal="" aria-labelledby="modalTitle"
            aria-hidden="true" role="dialog">
            <h2 id="modalTitle">
                Sistema Único de Beneficiarios de Estado de Zacactecas.</h2>
            <div class="small-12 medium-12 large-12 columns separa_v" align="right">
                <div class="small-12 medium-6 large-6 columns separa_v" align="right">
                    
                    <asp:Label ID="lblRegistrar" for="curp-restore" runat="server" Text="Escribe tu CURP:"></asp:Label>
                </div>
                <div class="small-12 medium-6 large-6 columns separa_v" align="left">
                    <asp:TextBox ID="txtCURPUser" class="large-12.columns nopaste" onkeyup="this.value=this.value.toUpperCase();"
                        MaxLength="18" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="small-12 medium-12 large-12 columns separa_v" align="right">
                <div class="small-12 medium-6 large-6 columns separa_v" align="right">
                    <label for="curp-restore">
                        Escribe tu Correo Electrónico:<label>
                        </label>
                    </label>
                </div>
                <div class="small-12 medium-6 large-6 columns separa_v" align="left">
                    <asp:TextBox ID="txtMail" class="large-12.columns nopaste" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="small-12 medium-12 large-12 columns separa_v" align="right">
                <div class="small-12 medium-6 large-6 columns separa_v" align="right">
                    <label for="curp-restore">
                        Escribe nuevamente tu Correo Electrónico:<label>
                        </label>
                    </label>
                </div>
                <div class="small-12 medium-6 large-6 columns separa_v" align="left">
                    <asp:TextBox ID="txtRepiteMail" class="large-12.columns nopaste" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="small-12 medium-12 large-12 columns separa_v" align="right">
                <div class="small-12 medium-6 large-6 columns separa_v" align="right">
                    <label for="curp-restore">
                        Escribe una contraseña exclusiva para SUBEZ:<label>
                        </label>
                    </label>
                </div>
                <div class="small-12 medium-6 large-6 columns separa_v" align="left">
                    <asp:TextBox ID="txtPassword" class="large-12.columns nopaste" placeholder="Mínimo 6 caracteres"
                        runat="server"></asp:TextBox>
                    <div class="pstrength-bar" id="paswd-reg_bar" style="border: 1px solid white; font-size: 1px;
                        height: 5px; width: 0px;">
                    </div>
                    <div class="pstrength-info" id="paswd-reg_text">
                    </div>
                    <div class="pstrength-minchar" id="paswd-reg_minchar">
                    </div>
                </div>
            </div>
            <div class="small-12 medium-12 large-12 columns separa_v" align="right">
                <div class="small-12 medium-6 large-6 columns separa_v" align="right">
                    <label for="curp-restore">
                        Escribe nuevamente tu contraseña exclusiva para SUBEZ:<label>
                        </label>
                    </label>
                </div>
                <div class="small-12 medium-6 large-6 columns separa_v" align="left">
                    <asp:TextBox ID="txtRepitePassword" class="large-12.columns nopaste" placeholder="Mínimo 6 caracteres"
                        runat="server"></asp:TextBox>
                    <div class="pstrength-bar" id="paswd-reg2_bar" style="border: 1px solid white; font-size: 1px;
                        height: 5px; width: 0px;">
                    </div>
                    <div class="pstrength-info" id="paswd-reg2_text">
                    </div>
                    <div class="pstrength-minchar" id="paswd-reg2_minchar">
                    </div>
                </div>
            </div>
            <div id="msg-reg">
            </div>
            <div class="small-12 medium-8 large-4 columns derecha separa_v">
                <asp:Button ID="btnIniciarRegistro" 
                    class="btn btn-flat btn-primary button expand" runat="server" 
                    Text="Iniciar Registro" onclick="btnIniciarRegistro_Click" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
