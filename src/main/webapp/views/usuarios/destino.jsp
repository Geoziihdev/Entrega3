<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buscar Destinos de Voos</title>
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <h1>Aeroaymo</h1>
    <style>
        body {
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #4343e9;
            text-align: center;
        }

        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }

        input[type="text"] {
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

    </style>
</head>

<body>
    <div class="container">
        <h2>Buscar Destinos de Voos</h2>
        <form action="processarBuscaDestino.jsp" method="get">
            <label for="origem">Origem:</label>
            <input type="text" id="origem" name="origem" required>

            <label for="destino">Destino:</label>
            <input type="text" id="destino" name="destino" required>

            <button type="submit">Buscar Destinos</button>
        </form>
    </div>
</body>
</html>
