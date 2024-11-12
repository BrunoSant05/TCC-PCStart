<?php
// Conexão com o banco de dados
$servername = "127.0.0.1"; // Nome do servidor
$username = "root"; // Usuário do banco de dados
$password = ""; // Senha do banco de dados
$dbname = "produtos"; // Nome do banco de dados

// Criar conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexão
if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

// Função para atualizar o preço e imagem do produto
function atualizarPrecoImagem($link, $conn) {
    // Obter o conteúdo da página do produto
    $html = file_get_contents($link);

    // Verificar se a página foi carregada corretamente
    if (!$html) {
        echo "Erro ao carregar o link: $link <br>";
        return;
    }

    // Expressão regular para encontrar o preço (ajuste conforme a estrutura da página)
    preg_match('/"price":"([\d,\.]+)"/', $html, $matches_preco);
    $preco = isset($matches_preco[1]) ? $matches_preco[1] : null;

    // Expressão regular para encontrar a URL da imagem (ajuste conforme a estrutura da página)
    preg_match('/"image":"(https:\/\/.*?\.jpg)"/', $html, $matches_imagem);
    $imagem_url = isset($matches_imagem[1]) ? $matches_imagem[1] : null;

    // Verificar se preço e imagem foram encontrados
    if ($preco && $imagem_url) {
        // Atualizar no banco de dados
        $sql = "UPDATE produtos SET preco = ?, imagem_url = ? WHERE link = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param('dss', $preco, $imagem_url, $link);

        if ($stmt->execute()) {
            echo "Preço e imagem atualizados com sucesso para o link: $link <br>";
        } else {
            echo "Erro ao atualizar para o link: $link. " . $conn->error . "<br>";
        }
    } else {
        echo "Não foi possível encontrar preço ou imagem para o link: $link <br>";
    }
}

// Função para exibir o catálogo de produtos
function exibirCatalogo($conn) {
    // Consultar os produtos da categoria 'armazenamento' e tipo 'hardware'
    $sql = "SELECT nome, preco, imagem_url FROM produtos WHERE categoria = 'hardware' AND tipo = 'armazenamento'";
    $result = $conn->query($sql);

    // Verificar se há produtos na consulta
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            // Exibir cada produto
            echo '<div class="produto">';
            echo '<h2>' . $row['nome'] . '</h2>';
            echo '<p>Preço: R$ ' . number_format($row['preco'], 2, ',', '.') . '</p>';
            echo '<img src="' . $row['imagem_url'] . '" alt="' . $row['nome'] . '" style="max-width: 200px;"/>';
            echo '</div>';
        }
    } else {
        echo 'Nenhum produto encontrado.';
    }
}

// Buscar todos os links de produtos da categoria 'armazenamento' e atualizar seus preços e imagens
$sql_links = "SELECT link FROM produtos WHERE categoria = 'hardware' AND tipo = 'armazenamento'";
$result_links = $conn->query($sql_links);

if ($result_links->num_rows > 0) {
    while ($row = $result_links->fetch_assoc()) {
        // Chama a função para atualizar cada produto
        atualizarPrecoImagem($row['link'], $conn);
    }
} else {
    echo "Nenhum produto encontrado para atualizar.";
}

// Exibir o catálogo de produtos
exibirCatalogo($conn);

// Fechar a conexão com o banco de dados
$conn->close();
?>
