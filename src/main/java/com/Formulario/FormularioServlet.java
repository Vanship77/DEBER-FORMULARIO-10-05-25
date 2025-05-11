// Paquete donde se encuentra esta clase Java
package com.Formulario;

// Importación de clases necesarias para trabajar con Servlets
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

// Anotación que indica la URL a la que responderá este servlet
@WebServlet("/FormularioServlet")
public class FormularioServlet extends HttpServlet {

    // Metodo que maneja las peticiones HTTP POST (cuando se envía el formulario)
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Obtener los datos enviados desde el formulario usando los nombres de los campos
        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        String edad = request.getParameter("edad");
        String carrera = request.getParameter("carrera");

        // Verificar si alguno de los campos está vacío o no fue enviado
        if (nombre == null || nombre.isEmpty() ||
                correo == null || correo.isEmpty() ||
                edad == null || edad.isEmpty() ||
                carrera == null || carrera.isEmpty()) {

            // Si algún campo está vacío, se responde con error 400 (Bad Request) y un mensaje
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Todos los campos son obligatorios.");
            return; // Finaliza la ejecución del metodo
        }

        // Establecer el tipo de contenido de la respuesta como HTML con codificación UTF-8
        response.setContentType("text/html;charset=UTF-8");

        // Obtener el objeto PrintWriter para escribir la respuesta HTML al cliente
        PrintWriter out = response.getWriter();

        // Generar la respuesta HTML mejorada con estilos visuales embebidos
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<meta charset='UTF-8'>");
        out.println("<title>Confirmación</title>");

        // Estilos CSS embebidos para mejorar la presentación
        out.println("<style>");
        out.println("body { background-color: #f0f0f5; font-family: Arial, sans-serif; padding: 40px; }");
        out.println("h2 { color: #333366; }");
        out.println(".container { background: #ffffff; padding: 25px; border-radius: 10px; "
                + "box-shadow: 0 0 10px #cccccc; width: 500px; margin: auto; }");
        out.println("p { font-size: 1.1em; margin-bottom: 10px; }");
        out.println("a { display: inline-block; margin-top: 20px; text-decoration: none; "
                + "background-color: #333366; color: white; padding: 10px 15px; border-radius: 5px; }");
        out.println("a:hover { background-color: #444477; }");
        out.println("</style>");

        out.println("</head>");
        out.println("<body>");

        // Contenedor visual para centrar y organizar el contenido
        out.println("<div class='container'>");
        out.println("<h2>Se han registrado los datos correctamente:</h2>");

        // Mostrar los datos ingresados
        out.println("<p><strong>Nombre:</strong> " + nombre + "</p>");
        out.println("<p><strong>Correo:</strong> " + correo + "</p>");
        out.println("<p><strong>Edad:</strong> " + edad + "</p>");
        out.println("<p><strong>Carrera:</strong> " + carrera + "</p>");

        // Enlace para regresar al formulario
        out.println("<a href='index.jsp'>Volver al formulario</a>");
        out.println("</div>");

        out.println("</body>");
        out.println("</html>");
    }
}
