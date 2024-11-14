<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Armazenamentos</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="CSS/produtos.css">
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
                        <li><a href="indexquest.php">Responda o questionário</a></li>
                        <li><a href="ofertas.php">Ofertas</a></li>
                        <li><a href="pcs.php">Computadores e Notebooks</a></li>
                        <li><a href="CadastrarProd.php">Cadastrar produto</a></li>
                    </ul>
                </div>
            </li>
            <li>
                <a href="#">HARDWARE</a>
                <div class="submenu">
                    <ul >
                        <li><a href="coolers.php">Ventoinhas</a></li>
                        <li><a href="placas_de_videos.php">Placas de vídeo</a></li>
                        <li><a href="placa_mae.php">Placas mãe</a></li>
                        <li><a href="memoria.php">Memórias RAM</a></li>
                        <li><a href="armazenamento.php">Armazenamentos</a></li>
                        <li><a href="gabinetes.php">Gabinetes</a></li>
                        <li><a href="fontes.php">Fontes</a></li>
                        <li><a href="Processador.php">Processadores</a></li>
                        
                    </ul>
                </div>  
            </li>
            <li>
                <a href="#">Periféricos</a>
                <div class="submenu">
                    <ul>
                        <li><a href="monitores.php">Monitores</a></li>
                        <li><a href="mouses.php">Mouses</a></li>
                        <li><a href="teclados.php">Teclados</a></li>
                        <li><a href="fones_de_ouvido.php">Fones de ouvido</a></li>
                        <li><a href="mousepads.php">Mousepads</a></li>
                    </ul>
                </div>
            </li>
            <li>
                <a href="#">Sobre</a>
                <div class="submenu">
                    <ul>
                        <li><a href="sobre_nos.php">Sobre Nós</a></li>
                        <li><a href="politica.php">Política de Privacidade</a></li>
                        <li><a href="termos_uso.php">Termos de Uso</a></li>
                        <li><a href="preferencias.php">Preferências de cookies</a></li>
                        <li><a href="imprensa.php">Imprensa</a></li>
                    </ul>
                </div>
            </li>
        </ul>
    </div>
    <section class="sobre">
        <header class="cabecalho-catalogo">
            <h1>ARMAZENAMENTO</h1>
        </header>
        <main>
            <div class="produto" id="modelo-produto" style="display: none;">
                <a class="link-produto" href="#" target="_blank">
                    <div class="wrapper-imagem-produto">
                        <img class="imagem-produto" src="" alt="Imagem do Produto">
                    </div>
                    <p class="nome-loja"></p>
                    <h2 class="nome-produto"></h2>
                    <p class="preco-produto"></p>
                </a>
                <div class="container-botoes">
                    <button class="ver-oferta">Ver a Oferta</button>
                    <button class="comentarios-produto">Vejam as opiniões</button>
                </div>
            </div>
            <div id="container-produtos" class="container-produtos"></div>
            <div id="navegacao-paginacao" class="navegacao-paginacao"></div>
        </main>
    </section>
    <footer>
        <div class="outras_informacoes">
            <div class="informacao2">
                <h3>Siga-nos</h3>
                <ul>
                    <li><a href="https://m.facebook.com/?locale=pt_BR"> <i class="fab fa-facebook icone fa-lg"></i></a></li>
                    <li><a href="https://www.instagram.com/"> <i class="fab fa-instagram icone fa-lg"></i></a></li>
                    <li><a href="https://web.telegram.org/k/"> <i class="fab fa-telegram icone fa-lg"></i></a></li>
                    <li><a href="https://br.linkedin.com/"> <i class="fab fa-linkedin icone fa-lg"></i></a></li>
                    <li><a href="https://www.google.com/intl/pt-BR/gmail/about/"> <i class="fas fa-envelope icone fa-lg"></i></a></li>
                </ul>
            </div>
           
            <div class="informacao">
                <h3>Sobre</h3>
                <ul>
                    <li><a href="sobre_nos.php">Sobre Nós</a></li>
                        <li><a href="politica.php">Política de Privacidade</a></li>
                        <li><a href="termos_uso.php">Termos de Uso</a></li>
                        <li><a href="preferencias.php">Preferências de cookies</a></li>
                        <li><a href="imprensa.php">Imprensa</a></li>
                </ul>
            </div>
            
            <div class="informacao">
                <h3>Pc-start</h3>
                <ul>
                    <li><a href="Home.php">Home</a></li>
                        <li><a href="indexquest.php">Responda o questionário</a></li>
                        <li><a href="ofertas.php">Ofertas</a></li>
                        <li><a href="pcs.php">Computadores e Notebooks</a></li>
                        <li><a href="CadastrarProd.php">Cadastrar produto</a></li>
                </ul>
            </div>
            
            <div class="informacao">
                <h3>HARDWARE</h3>
                <ul>
                    <li><a href="coolers.php">Ventoinhas</a></li>
                        <li><a href="placas_de_videos.php">Placas de vídeo</a></li>
                        <li><a href="placa_mae.php">Placas mãe</a></li>
                        <li><a href="memoria.php">Memórias RAM</a></li>
                        <li><a href="armazenamento.php">Armazenamentos</a></li>
                        <li><a href="gabinetes.php">Gabinetes</a></li>
                        <li><a href="fontes.php">Fontes</a></li>
                        <li><a href="Processador.php">Processadores</a></li>
                </ul>
            </div>
            
            <div class="informacao">
                <h3>Periféricos</h3>
                <ul>
                    <li><a href="monitores.php">Monitores</a></li>
                        <li><a href="mouses.php">Mouses</a></li>
                        <li><a href="teclados.php">Teclados</a></li>
                        <li><a href="fones_de_ouvido.php">Fones de ouvido</a></li>
                        <li><a href="mousepads.php">Mousepads</a></li>
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
    <script src="js/sobre nos.js"></script>
</body>
</html>
