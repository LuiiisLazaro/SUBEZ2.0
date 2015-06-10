<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroDependencia.aspx.cs" Inherits="SUBEZ.Administrador.RegistroDependencia" %>

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
    <div>
       <header class="row contenedor_gral" id="arriba">
         <div class="large-3">
            <img src="../Image/SeZac.jpg" />
         </div>
         <hr/>
          
               <div class="side-note-container">
                  <h2>Registro de Dependencia</h2>
               </div>
               <div class="side-note-bottom"></div>
           
      </header>



       <div class="row">
                        <div class="large-12 columns">
                           <label>Nombre(s) de Dependencia
                              <input type="text" placeholder="NOMBRE DEPENDENCIA" readonly/>
                           </label>
                        </div>
                     </div>

                     <div class="row">
                        <div class="large-12 columns">
                           <label>Director
                              <input type="text" placeholder="NOMBRE DIRECTOR" readonly/>
                           </label>
                        </div>
                     </div>

                     <div class="row">
                     <label class="control-label"><span class="info-pop" title="¿Qué significa?" data-content="Teléfono fijo del aspirante."></span> Teléfono Fijo con Lada local</label>
                     <div class="controls">
                        <input id="tel_fij" type="text" placeholder="Escribe 10 digitos" data-mask="999-999-99-99" class="rq validaLetras">
                     </div>
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Teléfono celular del aspirante."></span> Teléfono Celular (10 números)</label>
                     <div class="controls">
                        <input id="tel_cel" type="text" placeholder="Escribe 10 digitos" data-mask="99-99-99-99-99" class="rq validaLetras">
                     </div>
                     </div>
                     <hr>
                     <h3>Primer Contacto      
                            </h3>

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

                        <div class="row">
                            <div class="large-28 columns">
                            <label>
                                Correo Electrónico Actual
                                <input type="text" id="email_act" class="rq uneditable-input" value="luishdezlazaro@hotmail.com"
                                    readonly="">
                            </label>
                            </div>
                        </div>
                 <div class="large-12 columns separa_v_xl">
                     <button class="btn btn-flat btn-primary button expand" id="upd-info-basic">Guardar</button>
                  </div>                       
                      
                     
    
    </div>
    </form>
</body>
</html>
