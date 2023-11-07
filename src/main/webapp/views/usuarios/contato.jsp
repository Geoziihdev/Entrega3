<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contatos</title>
    <style>
        /* Estilos para a página de contatos */
        body {
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #4343e9;
            text-align: center;
        }

        form {
            text-align: center;
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"] {
            width: 60%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            margin-right: 10px;
        }

        textarea {
            width: 100%;
            height: 150px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            margin-right: 10px;
        }

        button[type="submit"] {
            background-color: #4343e9;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        button[type="submit"]:hover {
            background-color: #333;
        }

        .contact-info {
            text-align: center;
            margin-top: 20px;
        }

        .contact-info a {
            margin: 10px;
            text-decoration: none;
            color: #4343e9;
        }

        .chat-button {
            background-color: #4343e9;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        .chat-button:hover {
            background-color: #333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Entre em Contato Conosco</h1>
        <form action="processarContato.jsp" method="post">
            <label for="nome">Nome:</label>
            <input type="text" id="nome" name="nome" required>
            <br>

            <label for="email">E-mail:</label>
            <input type="email" id="email" name="email" required>
            <br>

            <label for="telefone">Telefone:</label>
            <input type="text" id="telefone" name="telefone">
            <br>

            <label for="mensagem">Mensagem:</label>
            <textarea id="mensagem" name="mensagem" required></textarea>
            <br>

            <button type="submit">Enviar</button>
        </form>

        <div class="contact-info">
            <a href="tel:+123456789">Telefone: (12) 3456-789</a>
            <a href="mailto:contato@exemplo.com">Email: contato@exemplo.com</a>
            <a href="https://chat.exemplo.com" class="chat-button">Chat</a>
        </div>
    </div>
</body>
</html>
