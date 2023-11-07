package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlpatterns = {"promocoes-create", "promocoes-edit", "promocoes-update", "promocoes-delete"}, value = "", name = "")
public class PromocoesServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Neste exemplo, estamos apenas encaminhando a solicitação para uma página JSP de promoções.
        request.getRequestDispatcher("/promocoes.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lógica para processar o formulário de inscrição nas promoções (se houver algum).
        String email = request.getParameter("email");

        // lógica para salvar o email do cliente em seu banco de dados ou enviar um e-mail de confirmação.

        // Redirecionar de volta para a página de promoções.
        response.sendRedirect(request.getContextPath() + "/promocoes.jsp");
    }
}
