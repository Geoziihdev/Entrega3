package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modelos.Destino;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "", urlpatterns = { "" }, value = "")
public class DestinoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // Aqui você deve buscar os destinos 
        List<Destino> destinos = buscarDestinos();

        // Adicione a lista de destinos ao request para passá-la para a página JSP
        request.setAttribute("destinos", destinos);

        // Encaminhe a requisição para a página JSP
        RequestDispatcher dispatcher = (RequestDispatcher) request.getRequestDispatcher("/webapp/views/usuario/listaDestinos.jsp");
        dispatcher.forward(request, response);
    }

    private List<Destino> buscarDestinos() {
        // Aqui você deve implementar a lógica para buscar destinos do banco de dados ou de outra fonte de dados
    	//ListaFicticia
        List<Destino> destinos = new ArrayList<>();
        destinos.add(new Destino(1, "Origem 1", "Destino 1", "Voo 123", true));
        destinos.add(new Destino(2, "Origem 2", "Destino 2", "Voo 456", false));
        destinos.add(new Destino(3, "Origem 3", "Destino 3", "Voo 789", true));
        return destinos;
    }
}
