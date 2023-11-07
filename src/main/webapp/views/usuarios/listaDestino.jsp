<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <title>Lista de Destinos</title>
    
    <style>
    body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
}

h1 {
    background-color: #007bff;
    color: #fff;
    padding: 10px;
    text-align: center;
}

table {
    width: 100%;
    border-collapse: collapse;
    background-color: #fff;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    margin: 20px;
}

table th, table td {
    padding: 10px;
    text-align: left;
}

table th {
    background-color: #007bff;
    color: #fff;
}

table tr:nth-child(even) {
    background-color: #f2f2f2;
}

table tr:hover {
    background-color: #e0e0e0;
}
    

    </style>
    

</head>
<body>
    <h1>Lista de Destinos</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Origem</th>
            <th>Destino</th>
            <th>Voo</th>
            <th>Em Promoção</th>
        </tr>
        <c:forEach items="${destinos}" var="destino">
            <tr>
                <td>${destino.id}</td>
                <td>${destino.nomeOrigem}</td>
                <td>${destino.nomeDestino}</td>
                <td>${destino.voo}</td>
                <td>${destino.emPromocao ? 'Sim' : 'Não'}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
    