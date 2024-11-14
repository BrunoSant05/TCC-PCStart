<?php
$servername = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "pc_start"; // Nome correto do banco de dados conforme o seu dump SQL

// Conectando-se ao banco de dados
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificando se a conexão falhou
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}

// Coletando os dados do formulário via POST
$tipo = isset($_POST['c1']) ? $_POST['c1'] : '';  
$link = isset($_POST['link']) ? $_POST['link'] : ''; 
$nome = isset($_POST['nome']) ? $_POST['nome'] : '';

// Verificando se os campos foram preenchidos
if (empty($tipo) || empty($link) || empty($nome)) {
    die('Por favor, preencha todos os campos.');
}

// Definindo a categoria com base no tipo do produto
$categoria = '';
$hardware_types = ['armazenamento', 'gabinete', 'fonte', 'ram', 'monitor', 'video', 'mae', 'processador', 'ventoinha'];
$periferico_types = ['mouse', 'teclado'];

if (in_array($tipo, $hardware_types)) {
    $categoria = 'hardware';
} elseif (in_array($tipo, $periferico_types)) {
    $categoria = 'periferico';
} else {
    die("Tipo de produto desconhecido.");
}

// Verificando se o link já está cadastrado na tabela tb_produto
$stmt_check = $conn->prepare("SELECT COUNT(*) FROM tb_produto WHERE link = ?");
$stmt_check->bind_param("s", $link);
$stmt_check->execute();
$stmt_check->bind_result($count);
$stmt_check->fetch();
$stmt_check->close();

$message = '';

if ($count > 0) {
    // Se o link já estiver cadastrado
    $message = '<div class="message error">Erro: O link já está cadastrado. Por favor, use um link diferente.</div>';
} else {
    // Inserindo o novo produto na tabela tb_produto
    $stmt = $conn->prepare("INSERT INTO tb_produto (tipo, link, nome, categoria) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $tipo, $link, $nome, $categoria);

    try {
        $stmt->execute();
        $message = '<div class="message success">Produto cadastrado com sucesso!</div>';
    } catch (mysqli_sql_exception $e) {
        // Verificando erro específico de duplicação
        if ($e->getCode() === 1062) {
            $message = '<div class="message error">Erro: O link já está cadastrado. Por favor, use um link diferente.</div>';
        } else {
            $message = '<div class="message error">Erro ao cadastrar produto. Por favor, tente novamente.</div>';
        }
    }

    $stmt->close();
}

// Fechando a conexão com o banco
$conn->close();
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultado do Cadastro</title>
    <link rel="stylesheet" href="CSS/Cadprodresul.css">
</head>
<body>

    <div class="navigation">
        <!-- Exibe a mensagem de sucesso ou erro -->
        <?php echo $message; ?>
        
        <div class="buttons">
            <!-- Botão para cadastrar mais produtos -->
            <form action="cadastrarProd.php" method="get">
                <input type="submit" value="Cadastrar mais produtos">
            </form>
            <!-- Botão para voltar para a home -->
            <form action="Home.php" method="get">
                <input type="submit" value="Voltar para a Home">
            </form>
        </div>
    </div>

</body>
</html>
