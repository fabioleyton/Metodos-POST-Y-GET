/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.primerservlet.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import logica.Usuario;


@WebServlet(name = "SvUsuarios", urlPatterns = {"/SvUsuarios"})
public class SvUsuarios extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        List<Usuario> listaUsuarios = new ArrayList<>();
        listaUsuarios.add(new Usuario("123456789","juan", "moreno","3124567895"));
        listaUsuarios.add(new Usuario("1346792846","pedro", "garcia","3126845225"));
        listaUsuarios.add(new Usuario("3928176482","jose", "martinez","0341385420"));
        
        HttpSession misesion = request.getSession();
        misesion.setAttribute("listausuarios", listaUsuarios);
        
        response.sendRedirect("mostrarUsuarios.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        String documento = request.getParameter("documento");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String telefono = request.getParameter("telefono");
        
        System.out.println("El numero de documento es: " + documento);
        System.out.println("El nombre es: " + nombre);
        System.out.println("El apellido es: " + apellido);
        System.out.println("El numero de telefono es: " + telefono);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
