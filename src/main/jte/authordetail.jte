@import com.generation.progettolibrifinale.model.entities.Author
@import com.generation.progettolibrifinale.model.entities.Book

@param Author a

<!doctype html>
<html lang="it">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Dettaglio Autore - ${a.getName()} ${a.getSurname()}</title>
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
            max-width: 1000px;
            width: 100%;
            border-radius: 15px;
            box-shadow: 0 10px 35px rgba(52,73,94,0.12);
            padding: 36px 44px;
            box-sizing: border-box;
            display: flex;
            gap: 52px;
        }
        .author-column {
            flex: 0 0 330px;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
        }
        .books-column {
            flex: 1 1 0;
            min-width: 305px;
        }
        h1 {
            font-weight: 700;
            font-size: 2.1rem;
            color: #009879;
            margin-bottom: 16px;
        }
        .info-block {
            margin-bottom: 20px;
            font-size: 1.18rem;
        }
        .info-block strong {
            color: #222f3e;
        }
        .author-status {
            display: inline-block;
            background: linear-gradient(45deg,#009879,#27ae60);
            color: white;
            padding: 7px 20px;
            margin-bottom: 14px;
            border-radius: 25px;
            font-weight: 700;
            font-size: 1.13rem;
            letter-spacing: 1px;
        }
        .form-section {
            background: #f0f8f7;
            border-left: 6px solid #009879;
            border-radius: 12px;
            box-shadow: inset 0 0 12px #d1f0ea;
            padding: 20px 26px;
            margin-bottom: 16px;
            margin-top: 8px;
        }
        .form-section h2 {
            color: #007960;
            font-weight: 700;
            font-size: 1.18rem;
            margin-bottom: 13px;
        }
        .form-section input[type="text"],
        .form-section input[type="number"] {
            width: 95%;
            padding: 8px 12px;
            margin: 5px 0 15px 0;
            border: 2px solid #009879;
            border-radius: 8px;
            font-size: 1.07rem;
            box-sizing: border-box;
        }
        .form-section input[type="submit"] {
            background: linear-gradient(45deg, #ff6f91, #ff9671);
            color: white;
            padding: 10px 28px;
            font-size: 1.08rem;
            font-weight: 700;
            border-radius: 40px;
            border: none;
            box-shadow: 0 8px 15px rgba(255,111,145,0.18);
            cursor: pointer;
            transition: all 0.3s;
        }
        .form-section input[type="submit"]:hover {
            background: linear-gradient(45deg, #ff9671, #ff6f91);
            transform: scale(1.07);
        }
        .section h2 {
            font-weight: 700;
            font-size: 1.5rem;
            border-bottom: 3px solid #009879;
            padding-bottom: 6px;
            margin-bottom: 14px;
            color: #009879;
        }
        .styled-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 6px;
            font-size: 1.03rem;
            box-shadow: 0 4px 10px rgba(52,73,94,0.08);
            border-radius: 10px;
            overflow: hidden;
        }
        .styled-table th, .styled-table td {
            padding: 10px 12px;
            text-align: left;
        }
        .styled-table thead tr {
            background-color: #009879;
            color: #ffffff;
            font-weight: bold;
        }
        .styled-table tbody tr {
            border-bottom: 1px solid #e3e3e3;
            background: #f9f9fc;
        }
        .styled-table tbody tr:hover {
            background: #e0f2f1;
        }
        .btn-detail {
            background: linear-gradient(45deg, #009879, #27ae60);
            border: none;
            border-radius: 50%;
            padding: 7px;
            cursor: pointer;
            color: white;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 4px 8px rgba(52,73,94,0.07);
            transition: all 0.22s ease;
            text-decoration: none;
        }
        .btn-detail:hover {
            background: linear-gradient(45deg, #27ae60, #009879);
            transform: scale(1.08);
        }
        @media (max-width:900px) {
            .card {
                flex-direction: column;
                gap: 28px;
                padding: 20px 8px;
            }
            .author-column, .books-column {
                min-width: 0;
            }
        }
    </style>
</head>
<body>
<div class="card">
    <div class="author-column">
        <h1>Dettaglio Autore: ${a.getName()} ${a.getSurname()}</h1>
        <div class="author-status">
            ${a.isAlive() ? "Vivente" : "Deceduto"}
        </div>
        <div class="info-block">
            <strong>Nome:</strong> ${a.getName()}<br>
            <strong>Cognome:</strong> ${a.getSurname()}<br>
            <strong>Nascita:</strong> ${a.getDob().toString()}<br>
            <strong>ID:</strong> ${a.getId()}<br>
            <strong>Libri pubblicati:</strong> ${a.getBooks().size()}
        </div>
        <div class="form-section">
            <h2>INSERISCI NUOVO LIBRO</h2>
            <form method="post" action="/book/save">
                <input name="title"  type="text" placeholder="Titolo"><br/>
                <input name="price" type="number" placeholder="Prezzo"><br/>
                <input name="copiesSold" type="number" placeholder="Copie vendute"><br/>
                <input name="releasedIn" type="number" placeholder="Anno di rilascio"><br/>
                <input type="hidden" value="${a.getId()}" name="author_id"><br/>
                <input type="submit" value="Salva"><br/>
            </form>
        </div>
    </div>
    <div class="books-column">
        <div class="section">
            <h2>Lista Libri</h2>
            <table class="styled-table">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Titolo</th>
                    <th>Anno</th>
                    <th>Dettaglio</th>
                </tr>
                </thead>
                <tbody>
                @for(Book b:a.getBooks())
                    <tr>
                        <td>${b.getId()}</td>
                        <td>${b.getTitle()}</td>
                        <td>${b.getReleasedIn()}</td>
                        <td>
                            <a href="/book/detail?id=${b.getId()}" class="btn-detail" title="Vai a dettaglio" aria-label="Dettaglio libro">
                                <svg class="icon-circle" xmlns="http://www.w3.org/2000/svg" width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="#fff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <circle cx="12" cy="12" r="10" />
                                    <polyline points="12 16 16 12 12 8" />
                                    <line x1="8" y1="12" x2="16" y2="12" />
                                </svg>
                            </a>
                        </td>
                    </tr>
                @endfor
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
