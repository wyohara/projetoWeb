

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
@WebServlet(name="CadastroServlet", urlPatterns = {"/CadastroServlet"})
public class ServletCadastro extends HttpServlet {

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
        
        
        Prestador novoP = new Prestador();
        novoP.setNome(request.getParameter("nomeP"));
        novoP.setSenha(request.getParameter("senhaP"));
        novoP.setEmail(request.getParameter("emailP"));
        novoP.setCpf(request.getParameter("cpfP"));
        novoP.setCnpj(request.getParameter("cnpjP"));
        novoP.setEndereco(request.getParameter("endP"));
        novoP.setTelefone(request.getParameter("telP"));
     
            String path = request.getContextPath();
        ServiceCadastro c = new ServiceCadastro();
        c.cadastrar(novoP);
        if (c.prestadorExiste(novoP)){
               response.sendRedirect(path+"/registro.jsp");
        }else{
             c.cadastrar(novoP);
            response.sendRedirect(path+"/cadastroSucesso.jsp");
        }
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
