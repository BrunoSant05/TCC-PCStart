<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Regras do questionário</title>
    <!-- <link rel="stylesheet" href="CSS/indexquest.css"> -->
    <style>
        body {
    font-family: Arial, sans-serif;
    background-color: #2E8B8C;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    animation: fadeIn 1s ease-in-out;
}

@keyframes fadeIn {
    0% {
        opacity: 0;
    }
    100% {
        opacity: 1;
    }
}

.container {
    margin-top: 0px;
    background-color: #ffffff;
    border-radius: 8px;
    padding: 20px;
    box-shadow: 0 10px 15px rgba(0, 0, 0, 0.3), 0 4px 6px rgba(0, 0, 0, 0.1);
    max-width: 600px;
    width: 100%;
    transform: translateZ(0);
    transition: transform 0.5s ease;
    animation: slideIn 0.7s ease-in-out;
}

.container:hover {
    transform: translateY(-10px);
    box-shadow: 0 20px 30px rgba(0, 0, 0, 0.9), 0 px 15px rgba(0, 0, 0, 0.9);
}

@keyframes slideIn {
    5% {
        transform: translateY(-20px);
        opacity: 0;
    }
    100% {
        transform: translateY(0);
        opacity: 1;
    }
}

h1 {
    color: #333333;
    text-align: center;
}

h2 {
    color: #666666;
    margin-top: 0;
}

form {
    margin: 10px 0;
    text-align: center;
}

button {
    background-color: #4CAF50;
    color: white;
    border: none;
    padding: 10px 20px;
    text-transform: uppercase;
    font-weight: bold;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s, transform 0.3s;
}

button:hover {
    background-color: #45a049;
    transform: scale(1.05);
}

p {
    color: #444444;
    line-height: 1.6;
}

h3 {
    margin-top: 20px;
    color: #444444;
}

    </style>
</head>
<body>

<div class="container">
    <h1>Questionário da PC Start</h1>
    <h2>O nosso questionário contém algumas regras:</h2>
    <h3>Regra 1:</h3>
    <p>No questionário, o usuário será obrigado a responder todas as perguntas. Pois, o questionário será registrado a partir de todas as perguntas forem respondidas para termos um resultado melhor para o usuário que esteja procurando um computador ideal para o seu momento de utilização.</p>
    <h3>Regra 2:</h3>
    <p>Não vendemos as peças que estamos recomendando, então se houver algum problema de compra ou de recebimento, notifique a empresa em que efetuou o seu pedido.</p>
    <h3>Regra 3:</h3>
    <p>Com o resultado feito, enviaremos links ao e-mail do usuário com os resultados de cada componente com o melhor preço e melhor compatibilidade entre essas peças.</p>
    <form action="questper.php" method="post">
        <button type="submit">Começar o teste</button>
    </form>
    
</div>

</body>
</html>
