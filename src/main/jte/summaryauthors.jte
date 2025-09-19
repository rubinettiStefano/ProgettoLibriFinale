@import com.generation.progettolibrifinale.model.entities.Author
@import java.util.List

@param List<Author> authors
@param String currentResearch

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <title>Lista Autori</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&display=swap" rel="stylesheet">
    <style>
        body {
            min-height: 100vh;
            background: linear-gradient(135deg, #E3F0FF 0%, #FAFCFF 100%);
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 30px;
        }
        .container {
            max-width: 800px;
            background: #fff;
            border-radius: 18px;
            box-shadow: 0 8px 40px rgba(44, 62, 80, 0.2);
            margin: 40px auto;
            padding: 32px 24px;
        }
        h1 {
            text-align: center;
            color: #009879;
            margin-bottom: 32px;
            font-weight: 700;
            letter-spacing: 2px;
        }
        table {
            border-collapse: collapse;
            margin: 0 auto;
            font-size: 1.06em;
            min-width: 620px;
            width: 100%;
            background-color: #f3f3f3;
            border-radius: 13px 13px 0 0;
            overflow: hidden;
            box-shadow: 0 3px 30px rgba(0,0,0,0.13);
        }
        thead tr {
            background: linear-gradient(90deg, #009879 60%, #27e2ae 100%);
            color: #ffffff;
            text-align: left;
            font-weight: bold;
            letter-spacing: 1.5px;
        }
        th, td {
            padding: 15px 21px;
            transition: background 0.2s;
            color: #444;
        }
        tbody tr {
            border-bottom: 1px solid #e1e1e1;
        }
        tbody tr:nth-of-type(even) {
            background-color: #f8fdfb;
        }
        tbody tr:hover {
            background: #E0F7FA;
            cursor: pointer;
            filter: drop-shadow(0 2px 10px #afd0ee3b);
        }
        tbody tr:last-of-type {
            border-bottom: 3px solid #009879;
        }
        th:first-child, td:first-child {
            border-radius: 13px 0 0 0;
        }
        th:last-child, td:last-child {
            border-radius: 0 13px 0 0;
        }
        @media (max-width: 700px) {
            .container {
                padding: 8px 2px;
            }
            table {
                font-size: 0.91em;
                min-width: 320px;
            }
            th, td {
                padding: 9px 7px;
            }
        }
        .btn-detail {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(135deg, #009879 0%, #27e2ae 100%);
            padding: 6px;
            border-radius: 50%;
            box-shadow: 0 4px 8px rgba(39, 226, 174, 0.6);
            transition: transform 0.2s ease, box-shadow 0.3s ease;
            text-decoration: none;
            cursor: pointer;
            width: 40px;
            height: 40px;
        }
        .btn-detail:hover, .btn-detail:focus {
            transform: scale(1.15);
            box-shadow: 0 6px 12px rgba(39, 226, 174, 0.8);
        }
        .icon-circle {
            width: 24px;
            height: 24px;
        }
    </style>
</head>
<body>
<div style="text-align: center; margin-bottom: 20px;">
    <a href="/" style="display: inline-block; background: #009879; color: white; padding: 10px 20px; border-radius: 8px; text-decoration: none; font-weight: 700; box-shadow: 0 2px 6px #24e3bb;">
        Homepage
    </a>
</div>
<div class="container">
    <h1>Lista Autori</h1>

    <form method="get" class="filter-form">
        <label for="ky" class="filter-label">
            <svg class="icon-filter" viewBox="0 0 24 24" width="20" height="20" fill="none" stroke="#009879" stroke-width="2"><path d="M4 4h16v2l-7 8v6l-2 2v-8L4 6V4z"/></svg>
            Nominativo:
        </label>
        <input name="parteDelNominativo" id="authors" type="text" value="${currentResearch}" placeholder="e.g. Mario Rossi" class="filter-input">
        <button type="submit" class="filter-btn">Filtra</button>
        <button type="submit" name="r" value="1" class="filter-btn reset">Reset</button>
    </form>

    <table>
        <thead>
        <tr>
            <th>Nome</th>
            <th>Cognome</th>
            <th>Dettaglio</th>
        </tr>
        </thead>
        <tbody>
        @for(Author a:authors)
            <tr>
                <td>${a.getName()}</td>
                <td>${a.getSurname()}</td>
                <td>
                    <a href="/author/detail?id=${a.getId()}" class="btn-detail" title="Vai a dettaglio" aria-label="Vai a dettaglio">
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
</body>
</html>