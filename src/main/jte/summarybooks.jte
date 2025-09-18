@import com.generation.progettolibrifinale.model.entities.Book
@import java.util.List
<%-- Prendi dal model l'attributo di nome books
       e assegnalo a questa variabile
 --%>
@param List<Book> books

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <title>Lista Libri</title>
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
        .styled-table {
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
        .styled-table thead tr {
            background: linear-gradient(90deg, #009879 60%, #27e2ae 100%);
            color: #ffffff;
            text-align: left;
            font-weight: bold;
            letter-spacing: 1.5px;
        }
        .styled-table th,
        .styled-table td {
            padding: 15px 21px;
            transition: background 0.2s;
        }
        .styled-table tbody tr {
            border-bottom: 1px solid #e1e1e1;
        }
        .styled-table tbody tr:nth-of-type(even) {
            background-color: #f8fdfb;
        }
        .styled-table tbody tr:hover {
            background: #E0F7FA;
            cursor: pointer;
            filter: drop-shadow(0 2px 10px #afd0ee3b);
        }
        .styled-table tbody tr:last-of-type {
            border-bottom: 3px solid #009879;
        }
        .styled-table td {
            color: #444;
        }
        .styled-table th:first-child,
        .styled-table td:first-child {
            border-radius: 13px 0 0 0;
        }
        .styled-table th:last-child,
        .styled-table td:last-child {
            border-radius: 0 13px 0 0;
        }
        @media (max-width: 700px) {
            .container {
                padding: 8px 2px;
            }
            .styled-table {
                font-size: 0.91em;
                min-width: 320px;
            }
            .styled-table th, .styled-table td {
                padding: 9px 7px;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Lista Libri</h1>
    <table class="styled-table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Year</th>
        </tr>
        </thead>
        <tbody>
        @for(Book b:books)
            <tr>
                <td>${b.getId()}</td>
                <td>${b.getTitle()}</td>
                <td>${b.getReleasedIn()}</td>
            </tr>
        @endfor
        </tbody>
    </table>
</div>
</body>
</html>
