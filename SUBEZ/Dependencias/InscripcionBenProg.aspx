<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InscripcionBenProg.aspx.cs"
    Inherits="SUBEZ.Dependencias.InscripcionBenProg" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
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
                        <li class="current"><a href="IPersonal1.aspx" class="no-submenu"><span class="awe -user"></span>Información personal</a></li>
                  <li><a href="IPersonal2.aspx" class="no-submenu"><span class="awe-book"></span>Información Escolar o Infomración Laboral</a></li>
                  <li><a href="SolicitudPrograma.aspx" class="no-submenu"><span class="awe-file"></span>Solicitudes a Programas</a></li>
                  <li><a href="mensajes.aspx" class="no-submenu"><span class="awe-file"></span>Mensajes</a></li>
                  <li><a href="Configuracion.aspx" class="no-submenu"><span class="awe-cogs"></span>Configuración</a></li>
                  <li><a href="help.aspx" class="no-submenu"><span class="awe-file"></span>Ayuda</a></li>
                  <li><a href="#" class="no-submenu" id="logout"><span class="awe-signout"></span>Cerrar sesión</a></li>
                      </ul>
                    </nav>
            </div>
        </section>
    <div class="small-12 medium-12 large-9 columns borde_contenedor">
        <div class="large-12 columns separa_v borde_contenedor">
            <header>
                  <h4>Beneficiario Disponibles</h4>
               </header>
            <div class="large-12 columns separa_v" id="Div3">
                <div class="small-12 medium-3 large-3 columns separa_v">
                    <asp:Button class="btn btn-flat btn-primary button expand" ID="Button1" runat="server"
                        Text="Exporta a Excel" OnClick="btnAgregarPrograma_Click" />
                </div>
                <div class="small-12 medium-3 large-3 columns separa_v">
                    <asp:Button class="btn btn-flat btn-primary button expand" ID="Button2" runat="server"
                        Text="Exporta a Word" OnClick="btnActualizar_Click" />
                </div>
                <div class="small-12 medium-3 large-3 columns separa_v">
                    <asp:Button class="btn btn-flat btn-primary button expand" ID="Button3" runat="server"
                        Text="Exporta a PDF" OnClick="btnGuardarCambios_Click" />
                </div>
                <div class="large-12 columns separa_v" id="mis_s">
                    <header>
                  <h4>Busquedas:</h4>
               </header>
                    <dx:ASPxGridView ID="gridBeneficiario" runat="server" AutoGenerateColumns="False"
                        EnableTheming="True" Theme="iOS" OnLoad="gridBeneficiario_Load">
                        <Settings VerticalScrollBarMode="Visible" ShowFilterRow="True" />
                        <SettingsSearchPanel Visible="True" />
                        <Columns>
                            <dx:GridViewDataTextColumn VisibleIndex="1" Caption="Nombre Beneficiario" FieldName="nombre">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn VisibleIndex="2" Caption="CURP" FieldName="curp">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn VisibleIndex="3" Caption="RFC" FieldName="rfc">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn VisibleIndex="4" Caption="Correo Electrónico" FieldName="correo">
                            </dx:GridViewDataTextColumn>
                        </Columns>
                    </dx:ASPxGridView>
                    <dx:ASPxGridViewExporter ID="Xporter" GridViewID="gridBeneficiario" runat="server">
                    </dx:ASPxGridViewExporter>
                </div>
            </div>
            <div class="large-12 columns separa_v borde_contenedor">
                <header>
                  <h4>Programas Disponibles</h4>
                  <hr/>
               </header>
                <div class="large-12 columns separa_v" id="Div2">
                    <div class="large-12 columns separa_v" id="Div1">
                        <div class="small-12 medium-3 large-3 columns separa_v">
                            <asp:Button class="btn btn-flat btn-primary button expand" ID="Button4" runat="server"
                                Text="Exporta a Excel" />
                        </div>
                        <div class="small-12 medium-3 large-3 columns separa_v">
                            <asp:Button class="btn btn-flat btn-primary button expand" ID="Button5" runat="server"
                                Text="Exporta a Word" />
                        </div>
                        <div class="small-12 medium-3 large-3 columns separa_v">
                            <asp:Button class="btn btn-flat btn-primary button expand" ID="Button6" runat="server"
                                Text="Exporta a PDF" />
                        </div>
                        <div class="large-12 columns separa_v" id="Div4">
                    <header>
                  <h4>Busquedas:</h4>
               </header>
               </header>
                        <dx:ASPxGridView ID="gridPrograma" runat="server" AutoGenerateColumns="False" Theme="iOS">
                            <Settings VerticalScrollBarMode="Visible" ShowFilterRow="True" />
                            <SettingsSearchPanel Visible="True" />
                            <Columns>
                                <dx:GridViewDataTextColumn VisibleIndex="1" Caption="Nombre" FieldName="Nombre">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn VisibleIndex="2" Caption="Responsable Programa" FieldName="ResponsablePrograma">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn VisibleIndex="3" Caption="Periodo" FieldName="Periodo">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <%--<SettingsPager PageSize="10">
                        <PageSizeItemSettings Visible="true" ShowAllItem="true" />
                        </SettingsPager>--%>
                        </dx:ASPxGridView>
                        <dx:ASPxGridViewExporter ID="Xporter1" GridViewID="gridPrograma" runat="server">
                    </dx:ASPxGridViewExporter>
                    </div>
                </div>
                <div class="small-12 medium-12 large-12 columns separa_v" data-equalizer="">
                    <header>
                      <h4>Descripción de la Inscripción al Programa</h4>
                      <hr/>
                   </header>
                    <div class="small-12 medium-12 large-6 columns borde_contenedor separa_v" data-equalizer-watch=""
                        style="height: 468px;">
                        <header>
                     <h4><span class="awe-envelope"></span> Información del Beneficiario</h4>
                     <hr>
                  </header>
                        <label class="control-label">
                            Nombre del Beneficiario
                            <asp:TextBox class="validaLetras" ID="txtBeneficiario" type="text" runat="server"></asp:TextBox>
                        </label>
                        <label class="control-label">
                            CURP
                            <asp:TextBox class="validaLetras" ID="txtcurp" type="text" runat="server"></asp:TextBox>
                        </label>
                        <label class="control-label">
                            RFC
                            <asp:TextBox class="validaLetras" ID="txtRFC" type="text" runat="server"></asp:TextBox>
                        </label>
                        <label class="control-label">
                            Correo Electrónico
                            <asp:TextBox class="validaLetras" ID="txtCorreo" type="text" runat="server"></asp:TextBox>
                        </label>
                    </div>
                    <div class="small-12 medium-12 large-6 columns borde_contenedor separa_v" data-equalizer-watch=""
                        style="height: 468px;">
                        <header>
                     <h4><span class="awe-lock"></span> Información del Programa</h4>
                     <hr>
                  </header>
                        <label class="control-label">
                            Nombre del Programa
                            <asp:TextBox class="validaLetras" ID="TextBox1" type="text" runat="server"></asp:TextBox>
                        </label>
                        <label class="control-label">
                            Responsable del Programa
                            <asp:TextBox class="validaLetras" ID="TextBox2" type="text" runat="server"></asp:TextBox>
                        </label>
                        <label class="control-label">
                            Periodo
                            <asp:TextBox class="validaLetras" ID="TextBox3" type="text" runat="server"></asp:TextBox>
                        </label>
                    </div>
                </div>
                <div class="large-12 columns separa_v">
                    <asp:Button type="submit" class="btn btn-flat btn-primary button expand" ID="save_org_prog"
                        runat="server" Text="Actualizar" onclick="save_org_prog_Click" />
                </div>
            </div>
    </form>
</body>
</html>
