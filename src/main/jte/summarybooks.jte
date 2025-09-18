@import com.generation.progettolibrifinale.model.entities.Book
@import java.util.List
<%-- Prendi dal model l'attributo di nome books
       e assegnalo a questa variabile
 --%>
@param List<Book> books
@param Integer kycurrent = null


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

        .filter-form {
            display: flex;
            align-items: center;
            justify-content: flex-start;
            gap: 10px;
            margin: 0 auto 28px auto;
            padding: 18px 70px 18px 16px;
            max-width: 480px;
            background: rgba(243, 249, 255, 0.85);
            backdrop-filter: blur(6px) saturate(130%);
            border-radius: 14px;
            box-shadow: 0 2px 18px #afd0ee55;
            border: 1.2px solid #e2eefc;
            transition: box-shadow 0.2s;
        }
        .filter-form:focus-within {
            box-shadow: 0 4px 44px #7ad9bb38;
            border-color: #79eec9;
        }
        .filter-label {
            color: #009879;
            font-weight: 700;
            letter-spacing: 1px;
            display: flex;
            align-items: center;
            gap: 4px;
            margin-right: 5px;
        }
        .filter-input {
            font-size: 1.05em;
            padding: 8px 13px;
            border-radius: 8px;
            border: 1.2px solid #b8e6da;
            outline: none;
            background: #fafbff;
            margin-right: 8px;
            transition: border 0.2s, box-shadow 0.2s;
            box-shadow: 0 1px 4px #ddeafd28;
        }
        .filter-input:focus {
            border-color: #009879;
            box-shadow: 0 2px 16px #b7ffe688;
        }
        .filter-btn {
            background: linear-gradient(90deg, #009879 70%, #24e3bb 100%);
            color: #fff;
            border: none;
            border-radius: 8px;
            font-size: 1em;
            font-weight: 700;
            padding: 8px 22px;
            cursor: pointer;
            margin-left: 2px;
            margin-right: 2px;
            box-shadow: 0 2px 6px #cef8e2a9;
            transition: background 0.22s, transform 0.11s;
        }
        .filter-btn:hover, .filter-btn:focus {
            background: #009879;
            transform: translateY(-2px) scale(1.05);
        }
        .filter-btn.reset {
            background: linear-gradient(90deg, #ff7e67 70%, #ffd25c 100%);
            color: #464646;
            margin-left: 10px;
            font-weight: 700;
            box-shadow: 0 1px 7px #ffd27a69;
        }
        .icon-filter {
            min-width: 20px;
            min-height: 20px;
            vertical-align: sub;
            margin-right: 3px;
        }
        @media (max-width: 700px) {
            .filter-form {
                flex-direction: column;
                align-items: stretch;
                padding: 13px 5px;
            }
            .filter-btn, .filter-btn.reset {
                width: 100%;
                margin-top: 7px;
                margin-left: 0;
                margin-right: 0;
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
<div class="container">
    <h1>Lista Libri</h1>

    <!-- NON METTERE ACTION SIGNIFICA FARE REQUEST A URL DOVE SIAMO-->
    <form method="get" class="filter-form">
        <label for="ky" class="filter-label">
            <svg class="icon-filter" viewBox="0 0 24 24" width="20" height="20" fill="none" stroke="#009879" stroke-width="2"><path d="M4 4h16v2l-7 8v6l-2 2v-8L4 6V4z"/></svg>
            Year:
        </label>
        <input name="ky" id="ky" type="number" value="${kycurrent}" placeholder="e.g. 2022" class="filter-input">
        <button type="submit" class="filter-btn">Filtra</button>
        <button type="submit" name="r" value="1" class="filter-btn reset">Reset</button>
    </form>

    <table class="styled-table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Year</th>
            <th>Detail</th>
        </tr>
        </thead>
        <tbody>
        @for(Book b:books)
               <tr>
                    <td> ${b.getId()} </td>
                    <td>${b.getTitle()}</td>
                    <td>${b.getReleasedIn()}</td>
                   <td>
                       <a href="/book/detail?id=${b.getId()}" class="btn-detail" title="Vai a dettaglio" aria-label="Vai a dettaglio">
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
