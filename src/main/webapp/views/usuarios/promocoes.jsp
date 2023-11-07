<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Buscar Promoções</title>

    <style>
        /* Estilos para a página de busca de promoções */
        body {
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
            text-align: center;
        }

        h1 {
            color: #4343e9;
        }

        p {
            color: #333;
            font-size: 16px;
            margin: 10px 0;
        }

        form {
            margin: 20px auto;
            max-width: 400px;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
            color: #333;
        }

        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        button {
            background-color: #4343e9;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            margin-top: 10px;
            cursor: pointer;
        }

        button:hover {
            background-color: #333;
        }

        .promocao {
            border: 1px solid #ddd;
            padding: 10px;
            margin: 10px 0;
            background-color: #fff;
            border-radius: 5px;
        }

        button.alerta {
            background-color: #e93c3c;
            color: #fff;
            border: none;
            padding: 5px 10px;
            border-radius: 3px;
            cursor: pointer;
            margin-left: 10px;
        }

        button.alerta:hover {
            background-color: #c72e2e;
        }
    </style>
</head>

<body>
    <h1>Buscar Promoções</h1>
    <form action="buscarPromocoes.jsp" method="post">
        <label for="keyword">Palavra-chave:</label>
        <input type="text" name="keyword" id="keyword">
        <button type="submit">Buscar</button>
    </form>

    <h1>Resultado da Busca</h1>

    <%
        // Recupere a palavra-chave da solicitação
        String keyword = request.getParameter("keyword");

        if (keyword != null && !keyword.isEmpty()) {
            // Realize uma busca no banco de dados ou em outra fonte de dados para obter as promoções
            // Substitua isso pelo seu código de busca real

            // Exiba os resultados da pesquisa
            // Você pode usar uma estrutura de repetição para listar as promoções encontradas
    %>

    <h2>Promoções encontradas com a palavra-chave: <%= keyword %></h2>

    <!-- Exiba as promoções encontradas (substitua isso por seu código real) -->
    <div class="promocao">
        Promoção 1: Descrição da Promoção 1.
        <button class="alerta" onclick="submeterFormularioDeAlerta()">Receber Alertas</button>
    </div>

    <div class="promocao">
        Promoção 2: Descrição da Promoção 2.
        <button class="alerta" onclick="submeterFormularioDeAlerta()">Receber Alertas</button>
    </div>

    <% } %>

    <!-- Formulário para assinar alertas por e-mail -->
    <form action="receberAlertas.jsp" method="post" id="alertaForm" style="display: none;">
        <input type="hidden" name="email" id="email">
    </form>

    <!-- JavaScript para submeter o formulário de alerta quando o botão é clicado -->
    <script>
        function submeterFormularioDeAlerta() {
            var email = prompt("Insira seu e-mail para receber alertas de promoções:");
            if (email) {
                document.getElementById("email").value = email;
                document.getElementById("alertaForm").submit();
            }
        }
        
  


        <!-- Formulário para assinar alertas por e-mail -->
        <form action="receberAlertas.jsp" method="post" id="alertaForm" style="display: none;">
            <input type="hidden" name="email" id="email">
        </form>

        <!-- JavaScript para submeter o formulário de alerta quando o botão é clicado -->
        <script>
            function submeterFormularioDeAlerta() {
                var email = prompt("Insira seu e-mail para receber alertas de promoções:");
                if (email) {
                    document.getElementById("email").value = email;
                    document.getElementById("alertaForm").submit();
                }
            }

    </script>
</body>
</html>
