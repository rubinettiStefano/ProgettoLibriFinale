@import com.generation.progettolibrifinale.model.entities.Book
@import com.generation.progettolibrifinale.model.enums.Locale

@param Book b


<!doctype html>
<html lang="it">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Dettaglio Libro - ${b.getTitle()}</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet"/>
    <style>
        body {
            background: #f4f9fc;
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 40px 20px;
            color: #34495e;
            display: flex;
            justify-content: center;
        }
        .card {
            background: white;
            max-width: 650px;
            width: 100%;
            border-radius: 15px;
            box-shadow: 0 10px 35px rgba(52,73,94,0.12);
            padding: 30px 40px;
        }
        h1 {
            font-weight: 700;
            font-size: 2.6rem;
            color: #009879;
            margin-bottom: 8px;
        }
        .price {
            font-size: 1.4rem;
            color: #27ae60;
            font-weight: 600;
            margin-bottom: 12px;
        }
        .info {
            margin-bottom: 20px;
            font-size: 1.1rem;
        }
        .info strong {
            color: #222f3e;
        }
        .section {
            margin-top: 30px;
        }
        .section h2 {
            font-weight: 700;
            font-size: 1.5rem;
            border-bottom: 3px solid #009879;
            padding-bottom: 6px;
            margin-bottom: 14px;
            color: #009879;
        }
        .languages, .reviews {
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
        }
        .languages span, .reviews span {
            background: #e0f2f1;
            color: #00796b;
            padding: 6px 14px;
            border-radius: 20px;
            font-weight: 600;
            font-size: 1rem;
            user-select: none;
        }
        .reviews span {
            background: #fff3e0;
            color: #e65100;
            box-shadow: 0 2px 6px rgba(230,100,0,0.2);
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
    </style>
</head>
<body>
<div class="card">
    <a href="/book/all" class="btn-home" aria-label="Torna alla home">Torna a tutti i libri</a>

    <h1>${b.getTitle()}</h1>
    <div class="price">Prezzo: €${String.format("%.2f", b.getPrice())}</div>
    <div class="info"><strong>Copie vendute:</strong> ${b.getCopiesSold()}</div>
    <div class="info"><strong>Anno di rilascio:</strong> ${b.getReleasedIn()}</div>

    <div class="section">
        <h2>Lingue disponibili</h2>
        <div class="languages">
            @for(Locale l : b.getLanguages())
                <span>${l}</span>
            @endfor
        </div>
    </div>

    <div class="section">
        <h2>Recensioni</h2>
        <div class="reviews">
            @for(String r : b.getReviews())
                <span>${r}</span>
            @endfor
        </div>
    </div>

</div>

</body>
</html>
