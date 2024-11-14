<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página Principal</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="css/h.css">
</head>
<body>

     <div class="cabecalho">
        <div class="menu-toggle" onclick="toggleMenu()">
            <div class="tres_barras">
                <div class="bar"></div>
                <div class="bar"></div>
                <div class="bar"></div>
            </div>
        </div>

        <img src="IMG/pc_start.png" alt="Imagem Principal" onclick="window.location.href='home.php'" >

        <div class="pesquisa_teste">  
            <form id="barra_de_pesquisa">
                <input type="text" id="escreva_a_pesquisa" placeholder="Pesquisar...">
                <button type="submit">Buscar</button>
                <ul id="sugestao"></ul>
            </form>
            <div class="dentro_da_imagem">
                <a class="dentro_da_imagem-botao" href="indexquest.php">Faça o seu teste</a>
            </div>
        </div>

        <div class="login_cadastrar">
            <a class="login" href="login.php">Login</a>
            <a class="cadastro" href="cadastrar.php">Cadastrar</a>
        </div>  
    </div>
 
  <div class="menu" id="menu">
        <ul>
            <li>
                <a href="#">Pc-start</a>
                <div class="submenu">
                    <ul>
                        <li><a href="Home.php">Home</a></li>
                    <li><a href="CadastrarProd.php">Cadastrar produto</a></li>
                        <li><a href="indexquest.php">Responda o questionário</a></li>
                    </ul>
                </div>
            </li>
            <li>
                <a href="#">HARDWARE</a>
                <div class="submenu">
                    <ul >
                     <li><a href="armazenamento.php">Armazenamentos</a></li>
                    <li><a href="fontes.php">Fontes</a></li>
                    <li><a href="gabinetes.php">Gabinetes</a></li>
                    <li><a href="memoria.php">Memórias RAM</a></li>
                    <li><a href="monitores.php">Monitores</a></li>
                    <li><a href="placas_de_videos.php">Placas de vídeo</a></li>
                    <li><a href="placa_mae.php">Placas mãe</a></li>
                    <li><a href="Processador.php">Processadores</a></li>
                    <li><a href="coolers.php">Ventoinhas</a></li>

                        
                    </ul>
                </div>  
            </li>
            <li>
                <a href="#">Periféricos</a>
                <div class="submenu">
                    <ul>
                        <li><a href="mouses.php">Mouses</a></li>
                    <li><a href="teclados.php">Teclados</a></li>
                    </ul>
                </div>
            </li>
            <li>
                <a href="#">Sobre</a>
                <div class="submenu">
                    <ul>
                       <li><a href="imprensa.php">Imprensa</a></li>
                        <li><a href="politica.php">Política de Privacidade</a></li>
                        <li><a href="preferencias.php">Preferências de cookies</a></li>
                        <li><a href="sobre_nos.php">Sobre Nós</a></li>
                        <li><a href="termos_uso.php">Termos de Uso</a></li>
                    </ul>
                </div>
            </li>
        </ul>
    </div>
    
    <header class="cabecalho-catalogo">
        <h1>Conheça as ofertas do mercado de Informática</h1>
    </header>
    <main>
        <div class="container-produtos">
            <div class="produto" id="template-produto" style="display: none;">
                <a href="#" class="link-produto">
                    <div class="wrapper-imagem-produto">
                        <img class="imagem-produto" src="" alt="Imagem do Produto">
                    </div>
                    <h2 class="nome-loja"></h2>
                    <h3 class="nome-produto"></h3>
                    <p class="preco-produto"></p>
                </a>
                <div class="container-botoes">
                    <a href="#" class="ver-oferta">Ver a Oferta</a>
                    <a href="#" class="comentarios-produto">Comentários</a>
                </div>
            </div>
        </div>
    </main>
    <header class="cabecalho-catalogo">
        <h1>Confira os computadores e notebooks com todos os acessórios incluídos</h1>
    </header>
    <main>
        <div class="A">
            <div class="produto" id="B" style="display: none;">
                <a href="#" class="link-produto">
                    <div class="wrapper-imagem-produto">
                        <img class="imagem-produto" src="" alt="Imagem do Produto">
                    </div>
                    <h2 class="nome-loja"></h2>
                    <h3 class="nome-produto"></h3>
                    <p class="preco-produto"></p>
                </a>
                <div class="container-botoes">
                    <a href="#" class="ver-oferta">Ver o Produto</a>
                    <a href="#" class="comentarios-produto">Comentários</a>
                </div>
            </div>
        </div>
        <footer>
        <div class="outras_informacoes">
            <div class="informacao2">
                <h3>Siga-nos</h3>
                <ul>                    
                    <li><a href="https://m.facebook.com/?locale=pt_BR"> <i class="fab fa-facebook icone fa-lg"></i></a></li>
                    <li><a href="https://www.instagram.com/"> <i class="fab fa-instagram icone fa-lg"></i></a></li>
                    <li><a href="https://www.google.com/intl/pt-BR/gmail/about/"> <i class="fas fa-envelope icone fa-lg"></i></a></li>
                    <li><a href="https://br.linkedin.com/"> <i class="fab fa-linkedin icone fa-lg"></i></a></li>
                    <li><a href="https://web.telegram.org/k/"> <i class="fab fa-telegram icone fa-lg"></i></a></li>
                </ul>
            </div>
           
            <div class="informacao">
                <h3>Sobre</h3>
                <ul>
                        <li><a href="imprensa.php">Imprensa</a></li>
                        <li><a href="politica.php">Política de Privacidade</a></li>
                        <li><a href="preferencias.php">Preferências de cookies</a></li>
                        <li><a href="sobre_nos.php">Sobre Nós</a></li>
                        <li><a href="termos_uso.php">Termos de Uso</a></li>
                </ul>
            </div>
            
            <div class="informacao">
                <h3>Pc-start</h3>
                <ul>
                    <li><a href="Home.php">Home</a></li>
                    <li><a href="CadastrarProd.php">Cadastrar produto</a></li>
                        <li><a href="indexquest.php">Responda o questionário</a></li>
                </ul>
            </div>
            
            <div class="informacao">
                <h3>HARDWARE</h3>
                <ul>
                <li><a href="armazenamento.php">Armazenamentos</a></li>
                    <li><a href="fontes.php">Fontes</a></li>
                    <li><a href="gabinetes.php">Gabinetes</a></li>
                    <li><a href="memoria.php">Memórias RAM</a></li>
                    <li><a href="monitores.php">Monitores</a></li>
                    <li><a href="placas_de_videos.php">Placas de vídeo</a></li>
                    <li><a href="placa_mae.php">Placas mãe</a></li>
                    <li><a href="Processador.php">Processadores</a></li>
                    <li><a href="coolers.php">Ventoinhas</a></li>

                </ul>
            </div>
            
            <div class="informacao">
                <h3>Periféricos</h3>
                <ul>
                    <li><a href="mouses.php">Mouses</a></li>
                    <li><a href="teclados.php">Teclados</a></li>
                </ul>
            </div>
        </div>

        <div class="linha"></div>
        <br>
        <img src="IMG/Pc_start.png" class="imagem1" alt="1" onclick="window.location.href='home.php'" >
        <div class="botao_dois">
            <p>&copy; 2024 Pc-start.com.br</p>
            <p>Todas as imagens de produtos são marcas registradas dos seus respectivos proprietários.</p>
        </div>
    </footer>
    <script src="js/home.js"></script>
  
</body>
</html>
