<!doctype html>
<html lang="it">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Homepage Libri</title>
    <style> body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #a8edea 0%, #fed6e3 100%);
            margin: 0;
            padding: 40px;
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
            justify-content: center;
            color: #34495e;
        }

        .btn-container {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
            justify-content: center;
            max-width: 600px;
            width: 100%;
        }

        .btn-link {
            background: linear-gradient(135deg, #009879 0%, #27e2ae 100%);
            border: none;
            border-radius: 12px;
            color: white;
            font-size: 1.2rem;
            font-weight: 700;
            padding: 20px 40px;
            cursor: pointer;
            box-shadow: 0 4px 15px rgba(39, 226, 174, 0.4);
            transition: background 0.3s ease, transform 0.2s ease;
            flex: 1 1 120px;
            min-width: 140px;
            text-align: center;
            text-decoration: none;
            display: inline-flex;
            justify-content: center;
            align-items: center;
            user-select: none;
        }

        .btn-link:hover, .btn-link:focus {
            background: linear-gradient(135deg, #007a5d 0%, #1cb28b 100%);
            transform: scale(1.05);
            outline: none;
            text-decoration: none;
        } </style>
</head>
<body>
<div class="btn-container">
    <a href="/book/all" class="btn-link" role="button" tabindex="0">Riassunto Libri</a>
    <a href="/author/all" class="btn-link" role="button" tabindex="0">Riassunto Autori</a>
    <a href="#" class="btn-link" role="button" tabindex="0">TODO: Link 3</a>
    <a href="#" class="btn-link" role="button" tabindex="0">TODO: Link 4</a>
</div>
</body>
</html>