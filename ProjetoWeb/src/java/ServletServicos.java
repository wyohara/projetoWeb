/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ohara
 */
@WebServlet(name="CadastroServicosServlet", urlPatterns = {"/CadastroServicosServlet"})
public class ServletServicos extends HttpServlet {

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
        
        String [] prof = request.getParameterValues("prof");
        
        Prestador p= (Prestador)request.getSession().getAttribute("prestador");
        boolean bol;
        for(int i=0; i<prof.length; i++){
            Prestador_Servico ps = new Prestador_Servico();
            ps.setExperiencia(switchOptions(prof[i], request));
            ps.setIdPrestador(p.getIdPrestador());
            ps.setNomeServico(prof[i]);
            ps.setDescricao(request.getParameter("descricao"));
            
           
        ServiceServicos servicos = new ServiceServicos();
            bol = servicos.cadastrar(ps);
            
            
        }
            String path = request.getContextPath();
        
            response.sendRedirect(path+"/index.jsp");
    }
    
    private String switchOptions(String s, HttpServletRequest request){
        switch (s){
            case "Mecânico":
                 return request.getParameter("mec_exp");
            case "Eletricista":
                 return request.getParameter("el_exp");
            case "Faxineira":
                 return request.getParameter("fac_exp");
            case "Pedreiro":
                 return request.getParameter("ped_exp");    
        }
        return null;
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
