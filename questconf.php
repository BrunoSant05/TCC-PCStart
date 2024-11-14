<?php
session_start();

// Recuperando as respostas da sessão
$p1 = $_SESSION['p1'] ?? ''; // Uso (gamer, designer, estudo, pessoal, trabalho)
$p2 = $_SESSION['p2'] ?? ''; // Placa de vídeo (nvidia, amd, sem)
$p3 = $_SESSION['p3'] ?? ''; // Armazenamento
$p4 = $_SESSION['p4'] ?? ''; // Tipo de gabinete
$p5 = $_SESSION['p5'] ?? ''; // Processador (Intel, AMD)
$p6 = $_SESSION['p6'] ?? ''; // Faixa de preço

// Função para recomendar as peças com base nas respostas
function recomendarPecas($p1, $p2, $p3, $p4, $p5, $p6) {
    $recomendacao = [];
    $links = [];

    // Começamos com as perguntas e suas respostas
    $recomendacao[] = "Finalidade de uso: " . ucfirst($p1);
    $recomendacao[] = "Marca de placa de vídeo: " . ucfirst($p2);
    $recomendacao[] = "Tipo de armazenamento: " . ucfirst($p3);
    $recomendacao[] = "Tipo de gabinete: " . ucfirst($p4);
    $recomendacao[] = "Tipo de processador: " . ucfirst($p5);
    $recomendacao[] = "Faixa de preço: " . ucfirst($p6);

    // Recomendações de peças baseadas nas respostas
    $recomendacao[] = "Recomendações de Peças:";

    // Memória RAM comum a todas as configurações
    $pecas = [];
    $pecas[] = "Memória RAM: Corsair Vengeance LPX 16GB (2x8GB) DDR4 3200MHz";
    $links[] = "<a href='https://www.kabum.com.br/produto/110780/memoria-ram-corsair-vengeance-lpx-16gb-2x8gb-3200mhz-ddr4-cl16-black-cmk16gx4m2e3200c16?utm_id=21585251035&gad_source=1&gclid=Cj0KCQiAlsy5BhDeARIsABRc6ZvFWN7fauTQwyCsnVdi_Nka5VT4CciGtl_k7qJFjmFsdVh4aRmjRo0aAhGHEALw_wcB' target='_blank'>Ver Produto</a>";

    // Armazenamento recomendado
    if ($p3 == 'ssd') {
        $pecas[] = "Armazenamento: SSD Kingston A2000 500GB";
        $links[] = "<a href='https://www.kabum.com.br/produto/380744/ssd-kingston-nv2-500-gb-m-2-2280-pcie-4-0-x4-nvme-leitura-3500-mb-s-gravacao-2100-mb-s-azul-snv2s-500g?utm_id=21437971630&gad_source=1&gclid=Cj0KCQiAlsy5BhDeARIsABRc6ZuoppPR4OzXQvK9ZmfOjO4JYzzg2zkZptYDm3Dy5y0tMCJlsTvBSmsaAqPDEALw_wcB' target='_blank'>Ver Produto</a>";
    } elseif ($p3 == 'nvme') {
        $pecas[] = "Armazenamento: SSD NVMe Samsung 970 EVO 500GB";
        $links[] = "<a href='https://www.amazon.com.br/500GB-SAMSUNG-PLUS-Gen3-V-NAND/dp/B07M7Q21N7' target='_blank'>Ver Produto</a>";
    } else {
        $pecas[] = "Armazenamento: HD Seagate Barracuda 1TB";
        $links[] = "<a href='https://www.amazon.com.br/Seagate-BarraCuda-1TB-3-5%C2%B4-SATA/dp/B01LNJBA2I/ref=asc_df_B01LNJBA2I/?tag=googleshopp00-20&linkCode=df0&hvadid=709884378202&hvpos=&hvnetw=g&hvrand=6281379006076614995&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9216317&hvtargid=pla-318320388226&psc=1&mcid=2802b9fd7fe6395999476b6bfc726eb3&gad_source=1' target='_blank'>Ver Produto</a>";
    }

    // Fonte de alimentação recomendada
    $pecas[] = "Fonte de Alimentação: EVGA 600 W1, 80+ WHITE, 600W";
    $links[] = "<a href='https://www.kabum.com.br/produto/369658/fonte-msi-mag-a650bn-650w-80-plus-bronze-pfc-ativo-com-cabo-preto-306-7zp2b22-ce0?utm_id=21585251035&gad_source=1&gclid=Cj0KCQiAlsy5BhDeARIsABRc6ZuYXkRzrG5kueCX8cTsIhk4-IlED-N3lZv-JWUC5C_A7YflYwJDZ8gaAu-AEALw_wcB' target='_blank'>Ver Produto</a>";

    // Gabinete recomendado
    if ($p4 == 'media') {
        $pecas[] = "Gabinete: NZXT H510 (Torre Média)";
        $links[] = "<a href='https://www.amazon.com.br/Nzxt-Gabinete-Gamer-Lateral-Frontal/dp/B07WBVH9WT' target='_blank'>Ver Produto</a>";
    } elseif ($p4 == 'completa') {
        $pecas[] = "Gabinete: Cooler Master MasterBox Q300L (Torre Completa)";
        $links[] = "<a href='https://www.mercadolivre.com.br/gabinete-cooler-master-preto-q300l-rainbow/p/MLB22857329#polycard_client=search-nordic&wid=MLB4960127400&sid=search&searchVariation=MLB22857329&position=2&search_layout=grid&type=product&tracking_id=da3c8e65-0add-4b33-991c-8a33fcbec845' target='_blank'>Ver Produto</a>";
    } else {
        $pecas[] = "Gabinete: Gabinete Mini - ATX/Micro - ATX, Fortrek, Sc501Bk, Acessórios para Computador, Preto (Mini Torre)";
        $links[] = "<a href='https://www.amazon.com.br/Gabinete-Fortrek-Sc501Bk-Acess%C3%B3rios-Computador/dp/B07N25CJFH/ref=asc_df_B07N25CJFH/?tag=googleshopp00-20&linkCode=df0&hvadid=709884378154&hvpos=&hvnetw=g&hvrand=11837838150762204242&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9216317&hvtargid=pla-852221494318&mcid=09a7ef98e3c53defbbed230ac2c9f293&gad_source=1&th=1' target='_blank'>Ver Produto</a>";
    }

    // Processador recomendado
    if ($p5 == 'intel') {
        $pecas[] = "Processador: Intel Core i5-12400F, 2.5GHz (4.4GHz Max Turbo), Cache 18MB, LGA 1700";
        $links[] = "<a href='https://www.kabum.com.br/produto/283718/processador-intel-core-i5-12400f-2-5ghz-4-4ghz-max-turbo-cache-18mb-lga-1700-bx8071512400f?utm_id=21416437563&gad_source=1&gclid=Cj0KCQiAlsy5BhDeARIsABRc6ZugqPPbdEcQF-4bdN0Rx6WplhYcxoLL53T-gG1IxkYx-UpdFo8XtagaAiLPEALw_wcB' target='_blank'>Ver Produto</a>";
    } elseif ($p5 == 'amd') {
        $pecas[] = "Processador: AMD Ryzen 5 5600X (6 núcleos, 12 threads)";
        $links[] = "<a href='https://www.amazon.com.br/PROCESSADOR-AMD-5600-100-100000927BOX-Cer%C3%A2mica/dp/B09VCHR1VH/ref=asc_df_B09VCHR1VH/?tag=googleshopp00-20&linkCode=df0&hvadid=709884378223&hvpos=&hvnetw=g&hvrand=10315766882966858283&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9216317&hvtargid=pla-1649701389824&psc=1&mcid=ce71f1a9df883248832e6cfc0f64fa2b&gad_source=1' target='_blank'>Ver Produto</a>";
    } else {
        $pecas[] = "Processador: Intel Core i3-12100 (4 núcleos, 8 threads)";
        $links[] = "<a href='https://www.amazon.com.br/Processador-Intel-I3-12100F-4-30GHZ-BX8071512100F/dp/B09MDGKQLY/ref=asc_df_B09MDGKQLY/?tag=googleshopp00-20&linkCode=df0&hvadid=709884378235&hvpos=&hvnetw=g&hvrand=1953082226049583288&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9216317&hvtargid=pla-1620728571994&psc=1&mcid=74d68f25163331d9938523dbfc468863&gad_source=1' target='_blank'>Ver Produto</a>";
    }

    // Placa de vídeo recomendada
    if ($p2 == 'nvidia') {
        $pecas[] = "Placa de Vídeo: Nvidia GeForce GTX 1660 Super";
        $links[] = "<a href='https://www.kabum.com.br/produto/495560/placa-de-video-gtx-1660-super-pcyes-nvidia-geforce-6gb-gddr6-192-bits-full-size-pa1660s6gr6df?utm_id=21416437563&gad_source=1&gclid=Cj0KCQiAlsy5BhDeARIsABRc6ZsFYMs6DhsCddBYwOeJPuxKINrBRItRQMK7RGuZfpi7PyhJuCsdX8saAlPrEALw_wcB' target='_blank'>Ver Produto</a>";
    } elseif ($p2 == 'amd') {
        $pecas[] = "Placa de Vídeo: AMD Radeon RX 6600 XT";
        $links[] = "<a href='https://www.kabum.com.br/produto/583156/placa-de-video-rx-6600-8g-v3-dual-asus-amd-radeon-8gb-gddr6-90yv0gp3-m0na00?utm_id=21416437563&gad_source=1&gclid=Cj0KCQiAlsy5BhDeARIsABRc6ZtBMeIfN1zcinsCs4ozrsch9XJ6BHvHOxPdrSZ0zhEftjHHgvjUakkaAmmxEALw_wcB' target='_blank'>Ver Produto</a>";
    } else {
        $pecas[] = "Placa de Vídeo: Sem placa de vídeo dedicada";
    }

    // Preço recomendado
    if ($p6 == '2500') {
        $pecas[] = "Preço estimado: Até R$2500 (Configuração Básica)";
    } elseif ($p6 == '4500') {
        $pecas[] = "Preço estimado: Entre R$2500 e R$4500 (Configuração Intermediária)";
    } elseif ($p6 == '7000') {
        $pecas[] = "Preço estimado: Entre R$4500 e R$7000 (Configuração Avançada)";
    } else {
        $pecas[] = "Preço estimado: Acima de R$7000 (Configuração Premium)";
    }

    // Retorna as recomendações de peças e links
// Garantir que a quantidade de itens em $pecas e $links é a mesma
$maxIndex = min(count($pecas), count($links));

for ($key = 0; $key < $maxIndex; $key++) {
    // Verificar se existe um link para a peça
    $link = isset($links[$key]) ? $links[$key] : "Link não disponível";
    $recomendacaoLinks[] = $pecas[$key] . " - " . $link;
}

    return array_merge($recomendacao, $recomendacaoLinks);
}

$pecasRecomendadas = recomendarPecas($p1, $p2, $p3, $p4, $p5, $p6);
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/questconf.css">
    <title>Sua Recomendação de Peças</title>
</head>
<body>
    <div class="container">
        <h1>Sua recomendação de peças de hardware</h1>
        
        <p>Com base nas suas respostas, aqui estão as peças recomendadas para o seu computador:</p>

        <h2>Respostas do Questionário:</h2>
        <ol class="responses">
        <?php
        // Exibir as respostas do usuário até o item 7
        for ($i = 0; $i < 7; $i++) {
            echo "<li>" . $pecasRecomendadas[$i] . "</li>";
        }
        ?>
        </ol>

        <ul class="responses">
        <?php
        // Exibir as recomendações de peças a partir do item 7
        for ($i = 7; $i < count($pecasRecomendadas); $i++) {
            echo "<li>" . $pecasRecomendadas[$i] . "</li>";
        }
        ?>
        </ul>

        <form action="home.php" method="post">
            <input type="submit" value="Voltar à Página Inicial">
        </form>
    </div>
</body>
</html>
