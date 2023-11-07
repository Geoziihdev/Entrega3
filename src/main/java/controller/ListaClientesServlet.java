package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modelos.Cliente;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlpatterns = {"/clientes"}, value = "/clientes", name = "")
public class ListaClientesServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private List<Cliente> clientes = new ArrayList<>();

    public ListaClientesServlet() {
        super(); // Chama o construtor da superclasse (HttpServlet)
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String action = request.getServletPath();

        switch (action) {
            case "/clientes":
                // Aqui você deve buscar os clientes do banco de dados ou da lista em memória
                List<Cliente> clientes = buscarClientesDoBancoDeDados();

                // Adicione a lista de clientes ao request para passá-la para a página JSP
                request.setAttribute("clientes", clientes);

                // Encaminhe a requisição para a página JSP
                RequestDispatcher dispatcher = (RequestDispatcher) request.getRequestDispatcher("/webapp/views/usuarios/listaCliente.jsp");
                dispatcher.forward(request, response);
                break;
            default:
                response.sendRedirect("index.html");
                break;
        }
    }

    private List<Cliente> buscarClientesDoBancoDeDados() {
        
    	clientes.add(new Cliente(1, "João", "15-05-1990", "123.456.789-01"));
        clientes.add(new Cliente(2, "Maria", "30-09-1985", "987.654.321-02"));
        clientes.add(new Cliente(3, "Pedro", "10-12-1995", "456.789.012-03"));

    	    return clientes;
    
    }
}
