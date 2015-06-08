<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroEncargado.aspx.cs" Inherits="SUBEZ.Administrador.RegistroEncargado" %>

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
    
    <link rel="icon" href="../../sep.png" type="image/x-icon">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../me/static/img/icons/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../me/static/img/icons/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../me/static/img/icons/apple-touch-icon-57-precomposed.png">
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function edo_civ_onclick() {

        }

// ]]>
    </script>
</head>
<body>
    <form id="form1" runat="server">
     <header class="row contenedor_gral" id="arriba">
         <div class="large-3">
            <img src="../Image/SeZac.jpg" />
         </div>
         <hr/>
          <section class="side-note">
               <div class="side-note-container">
                  <h2><a href="../../archivos/tutor/informacion_personal.pdf" target="_blank">Registro encargado dependencia</a></h2>
               </div>
               <div class="side-note-bottom"></div>
            </section>
      </header>
      <div class="row">
                        <div class="large-12 columns">
                           <label>Nombre(s)
                              <input type="text" placeholder="LUIS ANGEL" readonly/>
                           </label>
                        </div>
                     </div>

                     <div class="row">
                        <div class="large-12 columns">
                           <label>Apellido Paterno
                              <input type="text" placeholder="HERNANDEZ" readonly/>
                           </label>
                        </div>
                     </div>

                      <div class="row">
                        <div class="large-12 columns">
                           <label>Apellido Materno
                              <input type="text" placeholder="LAZARO" readonly/>
                           </label>
                        </div>
                     </div>
                      <label class="control-label"><span class="info-pop" title="¿Qué significa?" data-content="Estado civil del aspirante."></span> Dependencia</label>
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
                   <div class="row">
                        <label>
                                Correo Electrónico Actual
                                <input type="text" id="email_act" class="rq uneditable-input" value="luishdezlazaro@hotmail.com"
                                    readonly="">
                        </label>
                        </div>
                    <div class="row">
                        <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Teléfono celular del aspirante."></span> Teléfono Celular (10 números)</label>
                     <div class="controls">
                        <input id="tel_cel" type="text" placeholder="Escribe 10 digitos" data-mask="99-99-99-99-99" class="rq validaLetras">
                     </div>
                    </div>

   
    </form>
</body>
</html>
