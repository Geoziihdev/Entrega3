package controller;
import javax.servlet.RequestDispatcher;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modelos.Cliente;
import modelos.Destino;

import java.io.IOException;
import java.util.List;

@WebServlet(urlpatterns = {"Cliente-create", "Cliente-edit", "Cliente-update", "Cliente-delete"}, value = "", name = "")
public class ClienteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ClienteServlet() {
        super(); // Chama o construtor da superclasse (HttpServlet)
    }

    protected void doGet(HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws IOException {
        String action = request.getServletPath();
        
        HttpServletRequest req;
		switch (action) {
            case "/cliente":
            	 // Aqui você deve buscar os clientes do banco de dados
                List<Cliente> clientes = buscarClientesDoBancoDeDados();
                request.setAttribute("clientes", clientes);

                // Adicione a lista de clientes ao request para passá-la para a página JSP
                request.setAttribute("clientes", clientes);
                
             // Encaminhe a requisição para a página JSP
                RequestDispatcher dispatcher = (RequestDispatcher) request.getRequestDispatcher("/views/usuario/listaClientes.jsp");
                dispatcher.forward(request, response);

             
                break;
                
                
                
            case "/cliente-create":
                RequestDispatcher createFormDispatcher = (RequestDispatcher) req.getRequestDispatcher("/views/cadastrocliente.jsp");
			javax.servlet.http.HttpServletResponse resp;
			createFormDispatcher.forward(req, resp);
                break;

            case "/cliente-edit":
                // Recupere o ID do cliente a ser editado dos parâmetros da solicitação
                int clienteId = Integer.parseInt(req.getParameter("id"));
                
                // Buscar o cliente do banco de dados usando o ID e passá-lo para a página de edição
                Cliente cliente = buscarClientePorId(clienteId); // Implemente essa função
                
                // Configure o cliente como um atributo da solicitação
                req.setAttribute("cliente", cliente);
                
                // Despache para a página de edição de cliente com o cliente a ser editado
                RequestDispatcher editFormDispatcher = (RequestDispatcher) req.getRequestDispatcher("/views/editcliente.jsp");
                editFormDispatcher.forward(req, resp);
               
                break;
                
            case "/cliente-update":
                // Aqui você deve receber os dados do formulário de edição e atualizar o cliente no banco de dados
                // Implemente a lógica para atualizar o cliente
                
                // Após a atualização, redirecione o usuário para a página de lista de clientes ou exiba uma mensagem de sucesso
                resp.sendRedirect("/cliente"); // Redireciona para a página de lista de clientes
                break;
 
            	
            
            case "/cliente-delete":
         
                // Recupere o ID do cliente a ser excluído dos parâmetros da solicitação
                int clienteId1 = Integer.parseInt(req.getParameter("id"));
                
                // Aqui você deve implementar a lógica para excluir o cliente do banco de dados
                // Após a exclusão, redirecione o usuário para a página de lista de clientes ou exiba uma mensagem de sucesso
                resp.sendRedirect("/cliente"); // Redireciona para a página de lista de clientes
                break;

                
                
            default:
                response.sendRedirect("index.html");
                break;
        }
    }

	private Cliente buscarClientePorId(int clienteId) {
		// TODO Auto-generated method stub
		return null;
	}

	private List<Cliente> buscarClientesDoBancoDeDados() {
		// TODO Auto-generated method stub
		return null;
	}
}









