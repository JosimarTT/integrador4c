package conn.servlet;

import conn.bean.BAlumno;
import conn.conexion.Conexion;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sagadeath
 */
public class SAlumno_buscar extends HttpServlet {

    Conexion con = new Conexion();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int codigo = Integer.parseInt(request.getParameter("codigo"));
        BAlumno balumno = new BAlumno();
        Statement sen;
        ResultSet res;
        String sql = "select * from alumnos where alumnoCod=" + codigo;
        try {
            sen = con.conexion().createStatement();
            res = sen.executeQuery(sql);
            while (res.next()) {
                balumno = new BAlumno();
                balumno.setAlumnoCod(res.getInt(1));
                balumno.setAlumnoNom(res.getString(2));
                balumno.setAlumnoApe(res.getString(3));
                balumno.setAlumnoCar(res.getString(4));
            }
        } catch (Exception e) {
            System.out.println("El error es: " + e);
        }
        request.setAttribute("busqueda_alumno", balumno);
        RequestDispatcher rd = request.getRequestDispatcher("alumno_buscar_res.jsp");
        rd.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
