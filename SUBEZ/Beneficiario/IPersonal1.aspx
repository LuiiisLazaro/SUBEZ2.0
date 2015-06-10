<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IPersonal1.aspx.cs" Inherits="SeZac.IPersonal1" %>

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
                     <strong><a class=""><asp:Label ID="lblNombre" runat="server" Text="Luis Angel Hernández Lázaro"></asp:Label></a>
                     </strong> <em><asp:Label ID="lblcurp" runat="server" Text="HELL920809HVZRZS07"></asp:Label></em>
                     <em><asp:Label ID="lbltipo" runat="server" Text="Aspirante"></asp:Label></em> 
                  </figcaption>
               </figure>
            </section>
            <nav class="main-navigation" role="navigation" >
               <ul>
                  <li class="current"><a href="IPersonal1.aspx" class="no-submenu"><span class="awe -user"></span>Información personal</a></li>
                  <li><a href="IPersonal2.aspx" class="no-submenu"><span class="awe-book"></span>Información Escolar o Infomración Laboral</a></li>
                  <li><a href="SolicitudPrograma.aspx" class="no-submenu"><span class="awe-file"></span>Solicitudes a Programas</a></li>
                  <li><a href="IPersonal1.aspx" class="no-submenu"><span class="awe-file"></span>Mensajes</a></li>
                  <li><a href="Configuracion.aspx" class="no-submenu"><span class="awe-cogs"></span>Configuración</a></li>
                  <li><a href="IPersonal1.aspx" class="no-submenu"><span class="awe-file"></span>Ayuda</a></li>
                  <li><a href="../Acceso.aspx" class="no-submenu" id="logout"><span class="awe-signout"></span>Cerrar sesión</a></li>
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
                  <h4><span class="awe-home"></span> Información de tu Domicilio</h4>
                  <hr/>
               </header>
               <div id="info-domic-block">
                  <div class="control-group">
                     <label class="control-label" >
                        <span class="info-pop" title="¿Qué significa?" data-content="Clasificación que se le da a la vialidad, en función del tránsito vehicular y/o peatonal."></span> Tipo y nombre de la vialidad donde se ubica tu domicilio:
                     </label>
                     <div class="controls">
                        <asp:DropDownList  class="irq" id="tipo_dir" runat="server">
                         <asp:ListItem Text="Selecciona una opción" Value="0"></asp:ListItem>
                          <asp:ListItem Text="Ampliación" Value="1"></asp:ListItem>
                           <asp:ListItem Text="Andador" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Avenida" Value="3"></asp:ListItem>
                             <asp:ListItem Text="Boulevard" Value="4"></asp:ListItem>
                             <asp:ListItem Text="Calle" Value="5"></asp:ListItem>
                             <asp:ListItem Text="Callejón" Value="6"></asp:ListItem>
                             <asp:ListItem Text="Calzada" Value="7"></asp:ListItem>
                             <asp:ListItem Text="Cerrada" Value="8"></asp:ListItem>
                             <asp:ListItem Text="Circuito" Value="9"></asp:ListItem>
                             <asp:ListItem Text="Circunvalación" Value="10"></asp:ListItem>
                             <asp:ListItem Text="Continuación" Value="11"></asp:ListItem>
                             <asp:ListItem Text="Corredor" Value="12"></asp:ListItem>
                             <asp:ListItem Text="Diagonal" Value="13"></asp:ListItem>
                             <asp:ListItem Text="Eje vial" Value="14"></asp:ListItem>
                             <asp:ListItem Text="Pasaje" Value="15"></asp:ListItem>
                             <asp:ListItem Text="Peatonal" Value="16"></asp:ListItem>
                             <asp:ListItem Text="Periferico" Value="17"></asp:ListItem>
                             <asp:ListItem Text="Privada" Value="18"></asp:ListItem>
                             <asp:ListItem value="19">PROLONGACIÓN</asp:ListItem>
                             <asp:ListItem value="20">RETORNO</asp:ListItem>
                             <asp:ListItem value="21">VIADUCTO</asp:ListItem>
                             <asp:ListItem value="22">NINGUNO</asp:ListItem>
                             <asp:ListItem value="23">CARRETERA</asp:ListItem>
                             <asp:ListItem value="24">CAMINO</asp:ListItem>
                             <asp:ListItem value="25">TERRACERIA</asp:ListItem>
                             <asp:ListItem value="26">BRECHA</asp:ListItem>
                             <asp:ListItem value="27">VEREDA</asp:ListItem>
                        </asp:DropDownList>
                     </div>
                     <div class="controls">
<asp:TextBox class="rq validaLetras" id="dir" type="text" runat="server"></asp:TextBox>
                     </div>
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Caracteres alfanuméricos y símbolos que identifican un inmueble en una vialidad."></span>Número exterior</label>
                     <div class="controls">
                        <asp:TextBox class="rq validaLetras" id="n_ext" type="text" placeholder="Ejemplo: #101, Edif. 2, etc." runat="server"></asp:TextBox>
                     </div>
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Se refiere a los caracteres alfanuméricos y símbolos que identifican uno o más inmuebles pertenecientes a un número exterior."></span> Número interior</label>
                     <div class="controls">
                        <asp:TextBox class="validaLetras" id="n_int" type="text" placeholder="Ejemplo: Depto. 2-A, etc." runat="server"></asp:TextBox>
                     </div>
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Hace referencia al tipo y nombre de las vialidades entre las cuales se ubica un domicilio geográfico, que corresponden a aquellas vialidades que generalmente son perpendiculares a la vialidad en donde está establecido el domicilio geográfico de interés."></span> Entre vialidad (tipo y nombre de vialidad perpendicular a tu domicilio)</label>
                     <div class="controls">
                        <asp:DropDownList  class="rq" id="tipo_calle1" runat="server">
                           <asp:ListItem value=" ">Selecciona una opción</asp:ListItem>
                           <asp:ListItem value="1">AMPLIACIÓN</asp:ListItem>
                           <asp:ListItem value="2">ANDADOR</asp:ListItem>
                           <asp:ListItem value="3">AVENIDA</asp:ListItem>
                           <asp:ListItem value="4">BOULEVARD</asp:ListItem>
                           <asp:ListItem value="5">CALLE</asp:ListItem>
                           <asp:ListItem value="6">CALLEJÓN</asp:ListItem>
                           <asp:ListItem value="7">CALZADA</asp:ListItem>
                           <asp:ListItem value="8">CERRADA</asp:ListItem>
                           <asp:ListItem value="9">CIRCUITO</asp:ListItem>
                           <asp:ListItem value="10">CIRCUNVALACIÓN</asp:ListItem>
                           <asp:ListItem value="11">CONTINUACIÓN</asp:ListItem>
                           <asp:ListItem value="12">CORREDOR</asp:ListItem>
                           <asp:ListItem value="13">DIAGONAL</asp:ListItem>
                           <asp:ListItem value="14">EJE VIAL</asp:ListItem>
                           <asp:ListItem value="15">PASAJE</asp:ListItem>
                           <asp:ListItem value="16">PEATONAL</asp:ListItem>
                           <asp:ListItem value="17">PERIFÉRICO</asp:ListItem>
                           <asp:ListItem value="18">PRIVADA</asp:ListItem>
                           <asp:ListItem value="19">PROLONGACIÓN</asp:ListItem>
                           <asp:ListItem value="20">RETORNO</asp:ListItem>
                           <asp:ListItem value="21">VIADUCTO</asp:ListItem>
                           <asp:ListItem value="22">NINGUNO</asp:ListItem>
                           <asp:ListItem value="23">CARRETERA</asp:ListItem>
                           <asp:ListItem value="24">CAMINO</asp:ListItem>
                           <asp:ListItem value="25">TERRACERIA</asp:ListItem>
                           <asp:ListItem value="26">BRECHA</asp:ListItem>
                           <asp:ListItem value="27">VEREDA</asp:ListItem>
                           </asp:DropDownList>
                     </div>
                     <div class="controls">
<asp:TextBox class="rq validaLetras" id="calle1" type="text" runat="server"></asp:TextBox>
                     </div>
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Hace referencia al tipo y nombre de las vialidades entre las cuales se ubica un domicilio geográfico, que corresponden a aquellas vialidades que generalmente son perpendiculares a la vialidad en donde está establecido el domicilio geográfico de interés."></span> Y vialidad (tipo y nombre de vialidad perpendicular a tu domicilio)</label>
                     <div class="controls">
                        <asp:DropDownList  class="rq" id="tipo_calle2" runat="server">
                           <asp:ListItem value=" ">Selecciona una opción</asp:ListItem>
                           <asp:ListItem value="1">AMPLIACIÓN</asp:ListItem>
                           <asp:ListItem value="2">ANDADOR</asp:ListItem>
                           <asp:ListItem value="3">AVENIDA</asp:ListItem>
                           <asp:ListItem value="4">BOULEVARD</asp:ListItem>
                           <asp:ListItem value="5">CALLE</asp:ListItem>
                           <asp:ListItem value="6">CALLEJÓN</asp:ListItem>
                           <asp:ListItem value="7">CALZADA</asp:ListItem>
                           <asp:ListItem value="8">CERRADA</asp:ListItem>
                           <asp:ListItem value="9">CIRCUITO</asp:ListItem>
                           <asp:ListItem value="10">CIRCUNVALACIÓN</asp:ListItem>
                           <asp:ListItem value="11">CONTINUACIÓN</asp:ListItem>
                           <asp:ListItem value="12">CORREDOR</asp:ListItem>
                           <asp:ListItem value="13">DIAGONAL</asp:ListItem>
                           <asp:ListItem value="14">EJE VIAL</asp:ListItem>
                           <asp:ListItem value="15">PASAJE</asp:ListItem>
                           <asp:ListItem value="16">PEATONAL</asp:ListItem>
                           <asp:ListItem value="17">PERIFÉRICO</asp:ListItem>
                           <asp:ListItem value="18">PRIVADA</asp:ListItem>
                           <asp:ListItem value="19">PROLONGACIÓN</asp:ListItem>
                           <asp:ListItem value="20">RETORNO</asp:ListItem>
                           <asp:ListItem value="21">VIADUCTO</asp:ListItem>
                           <asp:ListItem value="22">NINGUNO</asp:ListItem>
                           <asp:ListItem value="23">CARRETERA</asp:ListItem>
                           <asp:ListItem value="24">CAMINO</asp:ListItem>
                           <asp:ListItem value="25">TERRACERIA</asp:ListItem>
                           <asp:ListItem value="26">BRECHA</asp:ListItem>
                           <asp:ListItem value="27">VEREDA</asp:ListItem>
                           </asp:DropDownList>
                     </div>
                     <div class="controls">
<asp:TextBox  class="rq validaLetras" id="calle2" type="text" runat="server"></asp:TextBox>
                     </div>
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Hace referencia al tipo y nombre de la vialidad posterior donde se encuentra el domicilio geográfico."></span> Vialidad posterior a tu domicilio (tipo y nombre de vialidad posterior a tu domicilio)</label>
                     <div class="controls">
                        <asp:DropDownList   class="rq" id="calle_posterior_tipo" runat="server">
                           <asp:ListItem value=" ">Selecciona una opción</asp:ListItem>
                           <asp:ListItem value="1">AMPLIACIÓN</asp:ListItem>
                           <asp:ListItem value="2">ANDADOR</asp:ListItem>
                           <asp:ListItem value="3">AVENIDA</asp:ListItem>
                           <asp:ListItem value="4">BOULEVARD</asp:ListItem>
                           <asp:ListItem value="5">CALLE</asp:ListItem>
                           <asp:ListItem value="6">CALLEJÓN</asp:ListItem>
                           <asp:ListItem value="7">CALZADA</asp:ListItem>
                           <asp:ListItem value="8">CERRADA</asp:ListItem>
                           <asp:ListItem value="9">CIRCUITO</asp:ListItem>
                           <asp:ListItem value="10">CIRCUNVALACIÓN</asp:ListItem>
                           <asp:ListItem value="11">CONTINUACIÓN</asp:ListItem>
                           <asp:ListItem value="12">CORREDOR</asp:ListItem>
                           <asp:ListItem value="13">DIAGONAL</asp:ListItem>
                           <asp:ListItem value="14">EJE VIAL</asp:ListItem>
                           <asp:ListItem value="15">PASAJE</asp:ListItem>
                           <asp:ListItem value="16">PEATONAL</asp:ListItem>
                           <asp:ListItem value="17">PERIFÉRICO</asp:ListItem>
                           <asp:ListItem value="18">PRIVADA</asp:ListItem>
                           <asp:ListItem value="19">PROLONGACIÓN</asp:ListItem>
                           <asp:ListItem value="20">RETORNO</asp:ListItem>
                           <asp:ListItem value="21">VIADUCTO</asp:ListItem>
                           <asp:ListItem value="22">NINGUNO</asp:ListItem>
                           <asp:ListItem value="23">CARRETERA</asp:ListItem>
                           <asp:ListItem value="24">CAMINO</asp:ListItem>
                           <asp:ListItem value="25">TERRACERIA</asp:ListItem>
                           <asp:ListItem value="26">BRECHA</asp:ListItem>
                           <asp:ListItem value="27">VEREDA</asp:ListItem>
                           </asp:DropDownList>
                     </div>
                     <div class="controls">
                        <asp:TextBox class="rq validaLetras" id="calle_posterior" type="text" runat="server"></asp:TextBox>
                     </div>
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Se refiere a rasgos naturales o culturales (edificaciones) que aportan información adicional para facilitar la ubicación del domicilio geográfico, esto es fundamental en vialidadessin nombre y sin número exterior."></span> Descripción de la ubicación (rasgos naturales o edificios que permitan ubicar tu domicilio</label>
                     <div class="controls">
                     <asp:TextBox class="rq validaLetras" id="descripcion_ubicacion" type="text" runat="server"></asp:TextBox>
                     </div>
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Sustantivo propio que identifica a los Estados y al Distrito Federal."></span> Entidad Federativa</label>
                     <div class="controls" id="cbo_edos">
                        <asp:DropDownList   class="rq" id="id_edo" runat="server">
                           <asp:ListItem value="Aguascalientes">Aguascalientes</asp:ListItem>
	<asp:ListItem value="Baja California">Baja California</asp:ListItem>
	<asp:ListItem value="Baja California Sur">Baja California Sur</asp:ListItem>
	<asp:ListItem value="Campeche">Campeche</asp:ListItem>
	<asp:ListItem value="Chiapas">Chiapas</asp:ListItem>
	<asp:ListItem value="Chihuahua">Chihuahua</asp:ListItem>
	<asp:ListItem value="Coahuila">Coahuila</asp:ListItem>
	<asp:ListItem value="Colima">Colima</asp:ListItem>
	<asp:ListItem value="Distrito Federal">Distrito Federal</asp:ListItem>
	<asp:ListItem value="Durango">Durango</asp:ListItem>
	<asp:ListItem value="Estado de México">Estado de México</asp:ListItem>
	<asp:ListItem value="Guanajuato">Guanajuato</asp:ListItem>
	<asp:ListItem value="Guerrero">Guerrero</asp:ListItem>
	<asp:ListItem value="Hidalgo">Hidalgo</asp:ListItem>
	<asp:ListItem value="Jalisco">Jalisco</asp:ListItem>
	<asp:ListItem value="Michoacán">Michoacán</asp:ListItem>
	<asp:ListItem value="Morelos">Morelos</asp:ListItem>
	<asp:ListItem value="Nayarit">Nayarit</asp:ListItem>
	<asp:ListItem value="Nuevo León">Nuevo León</asp:ListItem>
	<asp:ListItem value="Oaxaca">Oaxaca</asp:ListItem>
	<asp:ListItem value="Puebla">Puebla</asp:ListItem>
	<asp:ListItem value="Querétaro">Querétaro</asp:ListItem>
	<asp:ListItem value="Quintana Roo">Quintana Roo</asp:ListItem>
	<asp:ListItem value="San Luis Potosí">San Luis Potosí</asp:ListItem>
	<asp:ListItem value="Sinaloa">Sinaloa</asp:ListItem>
	<asp:ListItem value="Sonora">Sonora</asp:ListItem>
	<asp:ListItem value="Tabasco">Tabasco</asp:ListItem>
	<asp:ListItem value="Tamaulipas">Tamaulipas</asp:ListItem>
	<asp:ListItem value="Tlaxcala">Tlaxcala</asp:ListItem>
	<asp:ListItem value="Veracruz">Veracruz</asp:ListItem>
	<asp:ListItem value="Yucatán">Yucatán</asp:ListItem>
	<asp:ListItem value="Zacatecas">Zacatecas</asp:ListItem>
    </asp:DropDownList>
                     </div>
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Sustantivo propio que identifica al Municipio y en el caso del Distrito Federal a las Delegaciones."></span> Delegación o Municipio</label>
                     <div class="controls" id="dcbo_mpio">
                        <asp:DropDownList   class="rq" id="id_Mun" runat="server">
                           <asp:ListItem value="m0">Municipio 0</asp:ListItem>
	<asp:ListItem value="m1">Municipio 1 </asp:ListItem>
	<asp:ListItem value="m2">Municipio 2</asp:ListItem>
	<asp:ListItem value="m3">Municipio 3</asp:ListItem>
	<asp:ListItem value="m4">Municipio 4</asp:ListItem>
	<asp:ListItem value="m5">Municipio 5</asp:ListItem>
	<asp:ListItem value="m6">Municipio 6</asp:ListItem>
	<asp:ListItem value="m7">Municipio 7</asp:ListItem>
	<asp:ListItem value="m8">Municipio 8</asp:ListItem>
	</asp:DropDownList>
                     </div> 
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Sustantivo propio que identifica a la Localidad."></span> Localidad</label>
                     <div class="controls" id="dcbo_loc">

                     <asp:DropDownList class="rq" name="id_loc" id="id_loc2" runat="server">
                           <asp:ListItem value="l0">Localidad 0</asp:ListItem>
	<asp:ListItem value="l1">Localidad 1 </asp:ListItem>
	<asp:ListItem value="l2">Localidad 2</asp:ListItem>
	<asp:ListItem value="l3">Localidad 3</asp:ListItem>
	<asp:ListItem value="l4">Localidad 4</asp:ListItem>
	<asp:ListItem value="l5">Localidad 5</asp:ListItem>
	<asp:ListItem value="l6">Localidad 6</asp:ListItem>
	<asp:ListItem value="l7">Localidad 7</asp:ListItem>
	<asp:ListItem value="l8">Localidad 8</asp:ListItem>
	</asp:DropDownList>

                                         <asp:DropDownList class="rq" name="id_loc" id="id_loc" runat="server">
                           <asp:ListItem value="l0">Localidad 0</asp:ListItem>
	<asp:ListItem value="l1">Localidad 1 </asp:ListItem>
	<asp:ListItem value="l2">Localidad 2</asp:ListItem>
	<asp:ListItem value="l3">Localidad 3</asp:ListItem>
	<asp:ListItem value="l4">Localidad 4</asp:ListItem>
	<asp:ListItem value="l5">Localidad 5</asp:ListItem>
	<asp:ListItem value="l6">Localidad 6</asp:ListItem>
	<asp:ListItem value="l7">Localidad 7</asp:ListItem>
	<asp:ListItem value="l8">Localidad 8</asp:ListItem>
	</asp:DropDownList>
                     </div>
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Número que identifica al código postal, constituido por cinco dígitos, obtenido de la información oficial de Correos de México."></span> Código Postal</label>
                     <div class="controls" id="dcbo_cp">
                      
                        <asp:DropDownList class="rq" name="id_cp" id="id_cp" runat="server">
                           <asp:ListItem value="l0">CP 0</asp:ListItem>
	<asp:ListItem value="l1">CP 1 </asp:ListItem>
	<asp:ListItem value="l2">CP 2</asp:ListItem>
	<asp:ListItem value="l3">CP 3</asp:ListItem>
	<asp:ListItem value="l4">CP 4</asp:ListItem>
	<asp:ListItem value="l5">CP 5</asp:ListItem>
	<asp:ListItem value="l6">CP 6</asp:ListItem>
	<asp:ListItem value="l7">CP 7</asp:ListItem>
	<asp:ListItem value="l8">CP 8</asp:ListItem>
	</asp:DropDownList>
                     </div>
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Clasificación que se da al asentamiento humano."></span> Tipo y nombre de asentamiento donde se ubica tu domicilio</label>
                     <div class="controls">
                        <asp:DropDownList class="rq" id="tipo_asentamiento" name="tipo_asentamiento" runat="server">
                           <asp:ListItem value=" ">Selecciona una opción</asp:ListItem>
                           <asp:ListItem value="1">AEROPUERTO</asp:ListItem>
                           <asp:ListItem value="2">AMPLIACIÓN</asp:ListItem>
                           <asp:ListItem value="3">BARRIO</asp:ListItem>
                           <asp:ListItem value="4">CANTÓN</asp:ListItem>
                           <asp:ListItem value="5">CIUDAD</asp:ListItem>
                           <asp:ListItem value="6">CIUDAD INDUSTRIAL</asp:ListItem>
                           <asp:ListItem value="7">COLONIA</asp:ListItem>
                           <asp:ListItem value="8">CONDOMINIO</asp:ListItem>
                           <asp:ListItem value="9">CONJUNTO HABITACIONAL</asp:ListItem>
                           <asp:ListItem value="10">CORREDOR INDUSTRIAL</asp:ListItem>
                           <asp:ListItem value="11">COTO</asp:ListItem>
                           <asp:ListItem value="12">CUARTEL</asp:ListItem>
                           <asp:ListItem value="13">EJIDO</asp:ListItem>
                           <asp:ListItem value="14">EXHACIENDA</asp:ListItem>
                           <asp:ListItem value="15">FRACCIÓN</asp:ListItem>
                           <asp:ListItem value="16">FRACCIONAMIENTO</asp:ListItem>
                           <asp:ListItem value="17">GRANJA</asp:ListItem>
                           <asp:ListItem value="18">HACIENDA</asp:ListItem>
                           <asp:ListItem value="19">INGENIO</asp:ListItem>
                           <asp:ListItem value="20">MANZANA</asp:ListItem>
                           <asp:ListItem value="21">PARAJE</asp:ListItem>
                           <asp:ListItem value="22">PARQUE INDUSTRIAL</asp:ListItem>
                           <asp:ListItem value="23">PRIVADA</asp:ListItem>
                           <asp:ListItem value="24">PROLONGACIÓN</asp:ListItem>
                           <asp:ListItem value="25">PUEBLO</asp:ListItem>
                           <asp:ListItem value="26">PUERTO</asp:ListItem>
                           <asp:ListItem value="27">RANCHERÍA</asp:ListItem>
                           <asp:ListItem value="28">RANCHO</asp:ListItem>
                           <asp:ListItem value="29">REGIÓN</asp:ListItem>
                           <asp:ListItem value="30">RESIDENCIAL</asp:ListItem>
                           <asp:ListItem value="31">RINCONADA</asp:ListItem>
                           <asp:ListItem value="32">SECCIÓN</asp:ListItem>
                           <asp:ListItem value="33">SECTOR</asp:ListItem>
                           <asp:ListItem value="34">SUPERMANZANA</asp:ListItem>
                           <asp:ListItem value="35">UNIDAD</asp:ListItem>
                           <asp:ListItem value="36">UNIDAD HABITACIONAL</asp:ListItem>
                           <asp:ListItem value="37">VILLA</asp:ListItem>
                           <asp:ListItem value="38">ZONA FEDERAL</asp:ListItem>
                           <asp:ListItem value="39">ZONA INDUSTRIAL</asp:ListItem>
                           <asp:ListItem value="40">ZONA MILITAR</asp:ListItem>
                           <asp:ListItem value="41">NINGUNO</asp:ListItem>
                           <asp:ListItem value="43">ZONA NAVAL</asp:ListItem>
                           </asp:DropDownList>
                        <div class="controls" id="dcbo_asen"></div>
                        <div id="ext1"></div>
                        <label class="control-label" ><span class="info-pop" title="¿Por qué guardamos esta información?" data-content="Nos permite conocer el impacto de nuestras becas a nivel geográfico y así poder hacer una mejor planeación y distribución de las mismas."></span> Latitud</label>
                        <div class="controls"> <span class="input-large uneditable-input" id="lat"></span> </div>
                        <label class="control-label" ><span class="info-pop" title="¿Por qué guardamos esta información?" data-content="Nos permite conocer el impacto de nuestras becas a nivel geográfico y así poder hacer una mejor planeación y distribución de las mismas."></span> Longitud</label>
                        <div class="controls"> <span class="input-large uneditable-input" id="lng"></span> </div>
                        <input type="hidden" id="formatedAddress" value="">
                        <input type="hidden" id="zoom_level" value="">
                     </div>
                     <div class="form-actions separa_v_xl" align="right">
                        <asp:Button class="btn btn-flat btn-primary button expand" id="upd_inf_dom" 
                             runat="server" Text="Guardar" onclick="upd_inf_dom_Click"></asp:Button>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="large-6 columns borde_contenedor hack separa_v" data-equalizer-watch>
            <div class="large-12 columns borde_contenedor separa_contenedor separa_v">
               <header>
                  <h4><span class="awe-map-marker"></span> Mapa de tu Domicilio</h4>
                  <hr/>
               </header>
                  <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d14716.09186003229!2d-102.55634!3d22.764529!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses-419!2smx!4v1433699645330" width="400" height="300" frameborder="0" style="border:0"></iframe>
                  <div id="crosshair"></div>
            </div>
            <div class="large-12 columns borde_contenedor separa_contenedor separa_v">
               <header>
                  <h4><span class="awe-user"></span> Información Básica</h4>
                  <hr/>
               </header>
               <div class="alert alert-info letra-sm">
                  <asp:Button  class="close" data-dismiss="alert" type="button" runat="server" Text="x"></asp:Button>
                  <strong>Importante!</strong> Debes completar toda la información que se te solicita; será necesaria para evitar inconvenientes en tu proceso de solicitud de beca. 
               </div>
               <div class="large-12 columns">
                  <div class="control-group">


                     <div class="row">
                        <div class="large-12 columns">
                           <label>CURP
                              <asp:TextBox ID="txtCURP" Text="text" Enabled="false" runat="server"></asp:TextBox>
                           </label>
                        </div>
                     </div>

                     <div class="row">
                        <div class="large-12 columns">
                           <label>Nombre(s)
                           <asp:TextBox ID="txtNombre" Text="text" Enabled="false" runat="server"></asp:TextBox>
                           </label>
                        </div>
                     </div>

                     <div class="row">
                        <div class="large-12 columns">
                           <label>Apellido Paterno
                           <asp:TextBox ID="txtApeidoPat" Text="text" Enabled="false" runat="server"></asp:TextBox>
                           </label>
                        </div>
                     </div>

                      <div class="row">
                        <div class="large-12 columns">
                           <label>Apellido Materno
                           <asp:TextBox ID="txtApeidoMat" Text="text" Enabled="false" runat="server"></asp:TextBox>
                           </label>
                        </div>
                     </div>

                     <div class="row">
                        <div class="large-12 columns">
                           <label>Fecha de Nacimiento
                           <asp:TextBox  ID="txtFechaNac" Text="text" Enabled="false" runat="server"></asp:TextBox>
                           </label>
                        </div>
                     </div>

                      <div class="row">
                        <div class="large-12 columns">
                           <label>Nacionalidad
                                <asp:TextBox ID="txtNacionalidad" Text="text" Enabled="false" runat="server"></asp:TextBox>
                           </label>
                        </div>
                     </div>

                     <div class="row">
                        <div class="large-12 columns">
                           <label>Entidad Federativa de Nacimiento
                                <asp:TextBox type="text" id="edo_nac" readonly runat="server"></asp:TextBox>
                           </label>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="large-12 infBasic">
                  <div class="control-group">
                     <label class="control-label"><span class="info-pop" title="¿Qué significa?" data-content="Estado civil del aspirante."></span> Estado Civil</label>
                     <div class="controls">
                     <asp:DropDownList id="edo_civ" class="input-xlarge rq" runat="server">
                        <asp:ListItem value=" ">Selecciona una opción</asp:ListItem>
                           <asp:ListItem value="1">Soltero</asp:ListItem>
                           <asp:ListItem value="2">Casado</asp:ListItem>
                           <asp:ListItem value="3">Union Libre</asp:ListItem>
                           <asp:ListItem value="4">Viudo</asp:ListItem>
                           <asp:ListItem value="5">Divorciado</asp:ListItem>
                           <asp:ListItem value="6">Separado</asp:ListItem>
                           </asp:DropDownList>
                     </div>
                     <label class="control-label"><span class="info-pop" title="¿Qué significa?" data-content="Teléfono fijo del aspirante."></span> Teléfono Fijo con Lada local</label>
                     <div class="controls">
                        <asp:TextBox id="tel_fij" type="text" placeholder="Escribe 10 digitos" data-mask="999-999-99-99" class="rq validaLetras" runat="server"></asp:TextBox>
                     </div>
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Teléfono celular del aspirante."></span> Teléfono Celular (10 números)</label>
                     <div class="controls">
                        <asp:TextBox id="tel_cel" type="text" placeholder="Escribe 10 digitos" data-mask="99-99-99-99-99" class="rq validaLetras" runat="server"></asp:TextBox>
                     </div>
                  </div>
                  <div class="large-12 columns separa_v_xl">
<asp:Button class="btn btn-flat btn-primary button expand" id="upd_info_basic" runat="server" 
                          Text="Guardar" onclick="upd_info_basic_Click"></asp:Button>
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