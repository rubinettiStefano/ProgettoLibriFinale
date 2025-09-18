<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Pagina non trovata - Errore 404</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;700&display=swap');
        body {
            background: linear-gradient(135deg, #a8edea 0%, #fed6e3 100%);
            font-family: 'Comfortaa', cursive, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #4a4a4a;
            text-align: center;
            flex-direction: column;
        }
        h1 {
            font-size: 7rem;
            margin: 0;
            color: #ff6f91;
            letter-spacing: 5px;
            text-shadow: 2px 2px 5px #ffb3c6;
        }
        h2 {
            font-weight: 400;
            font-size: 1.9rem;
            margin: 1rem 0 2rem 0;
        }
        p {
            font-size: 1.2rem;
            margin: 0 0 3rem 0;
        }
        .btn-home {
            background: linear-gradient(45deg, #ff6f91, #ff9671);
            border: none;
            color: white;
            padding: 15px 35px;
            font-size: 1.3rem;
            font-weight: 700;
            border-radius: 40px;
            box-shadow: 0 8px 15px rgba(255, 111, 145, 0.4);
            cursor: pointer;
            transition: all 0.3s ease;
            text-decoration: none;
            display: inline-block;
        }
        .btn-home:hover {
            background: linear-gradient(45deg, #ff9671, #ff6f91);
            box-shadow: 0 12px 20px rgba(255, 150, 113, 0.6);
            transform: scale(1.1);
        }
        .illustration {
            max-width: 320px;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>
<img class="illustration" src="https://cdn-icons-png.flaticon.com/512/4076/4076549.png" alt="Emoji triste"/>
<h1>404</h1>
<h2>Oops! Pagina non trovata</h2>
<p>La pagina che stai cercando potrebbe essere spostata o non esistere più.</p>
<a href="/book/all" class="btn-home" aria-label="Torna alla home">Torna a tutti i libri</a>
</body>
</html>
