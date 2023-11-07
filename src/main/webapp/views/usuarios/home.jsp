<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aeroaymo</title>
    <!-- Seus links para CSS e JavaScript aqui -->
    <link rel="stylesheet" type="text/css" href="/assets/css/style.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<style>
    /* Estilizando a tag img */
img {
  position: absolute;
  width: 100%;
  height: 100%;
  object-fit: cover;
  object-position: bottom;
  z-index: -1;
  opacity: 0.5;
}

.navbar {
  background-color: var(--color-button);
  color: #000;
}

.nav-link {
  color: white;
  opacity: 0.8;
}

.navbar-brand {
  color: yellow;
}

.header-text {
  text-align: center;
  color: white;
}

.text-int {
  color: #4343e9;
  background-color: aquamarine;
  opacity: 0.7;
}

.tx-int {
  background-color: #4343e9;
}

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap');

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

a {
  text-decoration: none;
  outline: none;
}

:root {
  --color-text: #F1F1F1;
  --color-subtitle: #dfd9d9;
  --color-highlight: #e2792d;
  --color-button: #4343e9;
}

    /* Estilos específicos para telas menores */
    @media (max-width: 768px) {
        body {
            background-attachment: scroll; /* Permitir que a imagem de fundo role com a página */
        }

        header .logo img {
            width: 40px; /* Reduzir o tamanho do logotipo */
            height: 40px;
        }

        header ul {
            flex-direction: column; /* Colocar itens do menu em uma coluna */
        }

        header ul li {
            margin: 10px 0;
        }

        header .navbar-brand {
            margin-bottom: 20px;
        }

        .container {
            padding: 10px;
        }

        main {
            padding-top: 100px;
        }
    }
    
    /* Estilo para os links de Login e Cadastro */
.link-login-cadastro {
    background-color: #0056b3; /* Cor de fundo azul */
    color: #fff; /* Cor do texto branca */
    padding: 10px 20px; /* Espaçamento interno */
    text-decoration: none; /* Remover sublinhado do link */
    border-radius: 5px; /* Borda arredondada */
}

.link-login-cadastro:hover {
    background-color: #0056b3; /* Cor de fundo alterada ao passar o mouse */
    
    
    /* Estilizando o formulário de pesquisa */
    #search-form {
        display: flex;
        align-items: center;
    }

    #search {
        padding: 5px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    #search::placeholder {
        color: #aaa;
    }

    #search-button {
        background-color: #4343e9; /* Cor de fundo do botão */
        color: white; /* Cor do texto do botão */
        border: none;
        border-radius: 4px;
        margin-left: 10px; /* Espaçamento entre o campo de pesquisa e o botão */
        cursor: pointer;
    }

    /* Altere as cores, tamanhos e margens de acordo com sua preferência */
</style>

<body>


    <!-- Seu conteúdo HTML aqui -->
    <header>
        <div class=" banner p-1 mb-2 bg-gradient-light text-dark">
            <img src="assets/img/pelourinho-salvador-bahia.png" class="img-fluid" alt="Imagem de fundo">
        </div>

        <nav class="navbar navbar-expand-lg bg-body-tertiary position-fixed col-12" style="z-index: 999;">
            <div class="container">
                <a class="navbar-brand" href="agenciateste.html">Aeroaymo</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="agenciateste.html">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="destino.jsp">Destinos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="promocoes.html">Promoções</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contatos.html">Contatos</a>
                        </li>
                    </ul>
                    <form id="search-form">
                        <input type="text" id="search" placeholder="Buscar">
                        <button type="submit">Pesquisar</button>
                    </form>
                    
               <a href="login.jsp" class="link-login-cadastro">Login</a>
<a href="Cadastro.jsp" class="link-login-cadastro">Cadastro</a>
                    
                </div>
            </div>
        </nav>
        
        
        
    </header>
    <br><br><br>



    <main>
        <div class="container">
            <div class="row justify-content-center">
                <div class="card-deck">
                
                
              <div class="card-deck">
    <div class="card">
      <img class="card-img-top" src="assets/img/pelourinho-salvador-bahia.png" alt="Imagem de capa do card">
      <div class="card-body">
        <h5 class="card-title">Belezas do Nordeste</h5>
        <p class="card-text">Descubra um paraíso de beleza natural e cultura única. Banhado pelo Oceano Atlântico, nosso
          destino
          é um convite ao
          deleite de praias exuberantes.<br><br>
          A partir de 699,00
        </p>
        <p class="card-text col-10"><small class="text-muted">Atualizados 3 minutos atrás</small></p>
        <a href="belezasdonordes.html" class="btn btn-warning">Visitar</a>
      </div>
    </div>

    <br>

    <div class="card">
      <img class="card-img-top" src="assets/img/cristo-redentor-desportivo-butanta3.jpg" alt="Imagem de capa do card">
      <div class="card-body">
        <h5 class="card-title">Maravilhas do Sudeste</h5>
        <p class="card-text">Destino vibrante, onde a diversidade cultural se mistura com paisagens
          deslumbrantes.<br><br>
          A partir de 678,00</p>
        <p class="card-text"><small class="text-muted">Atualizados 3 minutos atrás</small></p>
        <a href="maravilhasdosudeste.html" class="btn btn-warning">Visitar</a>
      </div>
    </div>

    <br>

    <div class="card">
      <img class="card-img-top" src="images.jpg" alt="Imagem de capa do card">
      <div class="card-body">
        <h5 class="card-title">Encantos do norte</h5>
        <p class="card-text">Aqui, a natureza se revela em sua forma mais exuberante, com a majestade da Floresta
          Amazônica, rios caudalosos e fauna diversificada.<br> <br> A partir de 695,00

        </p>
        <p class="card-text"><small class="text-muted">Atualizados 3 minutos atrás</small></p>
        <a href="encantosdonorte.html" class="btn btn-warning">Visitar</a>
      </div>
    </div>
  </div>

  <br>

  <div class="card-deck">
    <div class="card">
      <img class="card-img-top" src="assets/img/gramado.jpg" alt="Imagem de capa do card">
      <div class="card-body">
        <h5 class="card-title">Surpresas Do sul</h5>
        <p class="card-text">Um destino que combina natureza exuberante, cultura rica e paisagens deslumbrantes.
          <br><br>
          A partir de 857,00
        </p>
        <p class="card-text col-10"><small class="text-muted">Atualizados 3 minutos atrás</small></p>
        <a href="surpresasdosul.html" class="btn btn-warning">Visitar</a>
      </div>
    </div>

    <br>

    <div class="card">
      <img class="card-img-top" src="assets/img/maldivas.jpg" alt="Imagem de capa do card">
      <div class="card-body">
        <h5 class="card-title">Destinos internacionais </h5>
        <p class="card-text">Embarque em uma aventura pelo continente europeu, onde a história ganha vida em cada
          esquina e as paisagens variam
          desde montanhas majestosas até praias paradisíacas.<br><br> A
          partir de 678,00</p>
        <p class="card-text"><small class="text-muted">Atualizados 3 minutos atrás</small></p>
        <a href="destinosinternacionais.html" class="btn btn-warning">Visitar</a>
      </div>
    </div>

    <br>

    <br>

    <div class="card">
      <img class="card-img-top" src="" alt="Imagem de capa do card">
      <div class="card-body">
        <h5 class="card-title">Atrações </h5>
        <p class="card-text">Descubra o mundo conosco e viva experiências inesquecíveis que irão encher sua vida de
          memórias incríveis. Na nossa agência, entendemos que cada viajante é único, e por isso oferecemos uma ampla
          variedade de atrações para satisfazer os gostos mais diversos.<br><br> A
          partir de 348,00</p>
        <p class="card-text"><small class="text-muted">Atualizados 3 minutos atrás</small></p>
        <a href="atracoes.html" class="btn btn-warning">Visitar</a>
      </div>
    </div>
    
  </main>  

  <footer class="bg-dark text-light">
    <div class="container py-4">
      <div class="row">
        <div class="col-md-4">
          <h3>Contato</h3>
          <p>Entre em contato conosco para obter mais informações.</p>
        </div>
        <div class="col-md-4">
          <h3>Links Rápidos</h3>
          <ul>
            <li><a href="destinos.html">Destinos</a></li>
            <li><a href="promocoes.html">Promoções</a></li>
            <li><a href="contatos.html">Contatos</a></li>
          </ul>
        </div>
        <div class="col-md-4">
          <h3>Redes Sociais</h3>
          <ul>
            <li><a href="#">Facebook</a></li>
            <li><a href="#">Twitter</a></li>
            <li><a href="#">Instagram</a></li>
          </ul>
        </div>
      </div>
    </div>
  </footer>

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>







</body>

</html>

    

