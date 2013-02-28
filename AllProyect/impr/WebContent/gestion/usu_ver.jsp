<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

    <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/contacto.css"/>
    <script src="../js/contacto.js"></script>
</head>


<body id="c_body">
 <div id="dialog-form" title="Create new user">
    <p class="validateTips">Registra tu Numero *</p>
 
    <form>
    <fieldset id="c_fieldset">
        <label for="tipo" id="c_label">Tipo</label>
        <select name="tipo" id="tipo" >
           <option value='Celular'>Celular</option>
           <option value='Telefono'>Telefono</option>
           <option value="Nextel">Nextel</option>
        </select>
       <!--- <input type="text" name="tipo" id="tipo" class="text ui-widget-content ui-corner-all" />-->
        <label for="numero">Numero</label>
        <input type="text" name="numero" id="numero" value="" class="text ui-widget-content ui-corner-all" />
    </fieldset>
    </form>
</div>
 
 
<div id="users-contain" class="ui-widget">
    <h1 id="c_h1">Existing Users:</h1>
    <table id="users" class="ui-widget ui-widget-content">
        <thead>
            <tr class="ui-widget-header ">
                <th>Tipo</th>
                <th>Numero</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Celular</td>
                <td>994511006</td>
            </tr>
        </tbody>
    </table>
</div>
<button id="ver">Registar</button>
</body>
</html>