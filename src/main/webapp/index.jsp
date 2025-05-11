<%--
  Created by IntelliJ IDEA.
  Desarrollador: Gabriel Quijije Pazmiño
  Fecha: 10/05/2025
  Descripción: Página JSP que muestra un formulario HTML con estilos CSS.
               Los datos del formulario se envían a un Servlet llamado FormularioServlet
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- Esta directiva indica que la página usará UTF-8 como codificación de caracteres y lenguaje Java --%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%-- Define la codificación de caracteres del documento HTML como UTF-8 --%>
    <title>Formulario de Registro</title>
    <%-- Título que aparece en la pestaña del navegador --%>

    <style>
        /* Estilos CSS para mejorar el diseño visual del formulario */

        body {
            background-color: #f0f0f5; /* Color de fondo claro para toda la página */
            font-family: Arial, sans-serif; /* Fuente utilizada en la página */
            padding: 40px; /* Espaciado interior alrededor del contenido */
        }

        h1 {
            color: #333366; /* Color del título principal */
        }

        form {
            background: #ffffff; /* Fondo blanco para el formulario */
            padding: 40px; /* Espaciado interior dentro del formulario */
            border-radius: 10px; /* Bordes redondeados */
            box-shadow: 0 0 10px #cccccc; /* Sombra alrededor del formulario */
            width: 420px; /* Ancho fijo del formulario */
            margin: auto; /* Centra el formulario horizontalmente */
        }

        label {
            display: block; /* Hace que cada etiqueta aparezca en su propia línea */
            margin-bottom: 8px; /* Espacio debajo de cada etiqueta */
            margin-top: 15px; /* Espacio encima de cada etiqueta */
        }

        input, select {
            width: 100%; /* Campos ocupan el ancho del contenedor */
            padding: 10px; /* Espacio interno en los campos */
            margin-top: 5px; /* Separación entre etiqueta y campo */
        }

        button {
            margin-top: 20px; /* Espacio superior antes del botón */
            background-color: #333366; /* Color de fondo del botón */
            color: white; /* Texto en color blanco */
            padding: 10px; /* Espaciado interno del botón */
            border: none; /* Sin borde alrededor del botón */
            width: 100%; /* Ocupa el ancho del formulario */
            cursor: pointer; /* Cambia el cursor al pasar sobre el botón */
            border-radius: 5px; /* Bordes redondeados del botón */
        }

        button:hover {
            background-color: #444477; /* Color más claro al pasar el mouse por encima */
        }
    </style>
</head>
<body>

<h1>Formulario de Registro</h1>
<%-- Título principal visible para el usuario --%>

<form action="FormularioServlet" method="post">
    <%--
        Formulario que se enviará al Servlet llamado "FormularioServlet" usando el metodo POST.
        POST se usa para enviar los datos de forma segura sin que aparezcan en la URL.
    --%>

    <label for="nombre">Nombre:</label>
    <input type="text" name="nombre" id="nombre" required>
    <%-- Campo de texto para el nombre. El atributo "required" obliga al usuario a llenarlo --%>

    <label for="correo">Correo Electrónico:</label>
    <input type="email" name="correo" id="correo" required>
    <%-- Campo de tipo email que valida el formato de correo automáticamente --%>

    <label for="edad">Edad:</label>
    <input type="number" name="edad" id="edad" required>
    <%-- Campo numérico para que el usuario ingrese su edad --%>

    <label for="carrera">Carrera:</label>
    <select name="carrera" id="carrera" required>
        <%-- Menú desplegable para seleccionar una carrera. También es obligatorio --%>
        <option value="">Seleccione una opción</option>
        <%-- Opción por defecto para obligar a seleccionar una carrera válida --%>
        <option value="Ingeniería en Sistemas">Ingeniería en Sistemas</option>
        <option value="Medicina">Medicina</option>
        <option value="Arquitectura">Arquitectura</option>
        <option value="Derecho">Derecho</option>
    </select>

    <button type="submit">Enviar</button>
    <%-- Botón que envía los datos del formulario al servlet --%>
</form>

</body>
</html>
