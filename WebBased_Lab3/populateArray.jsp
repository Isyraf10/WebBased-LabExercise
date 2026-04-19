<!DOCTYPE html>
<html>
<head>
    <title>Populate Array Output</title>
    <style>
        body {
            font-family: sans-serif;
            margin: 20px;
        }
        h2 {
            font-family: serif; /* The header in the image has a serif font */
        }
        table {
            border-collapse: collapse;
            text-align: center;
        }
        th, td {
            border: 1px solid #d3d3d3; /* Light gray borders */
            padding: 10px 30px;
        }
        th {
            background-color: #e6ce83; /* Khaki/Gold header background */
            font-weight: bold;
        }
        .footer {
            margin-top: 20px;
            font-size: 0.9em;
        }
    </style>
</head>
<body>

    <h2>Read Java array and populate it into HTML table.</h2>

    <%
        String[][] salesData = {
            {"Salesman 1", "2500", "2100", "2200"},
            {"Salesman 2", "2000", "1900", "2400"},
            {"Salesman 3", "1800", "2200", "2450"}
        };
    %>

    <table>
        <tr>
            <th>Salesman</th>
            <th>Jan</th>
            <th>Feb</th>
            <th>Mac</th> </tr>
        
        <%
            for (int i = 0; i < salesData.length; i++) {
        %>
        <tr>
            <td><%= salesData[i][0] %></td>
            <td><%= salesData[i][1] %></td>
            <td><%= salesData[i][2] %></td>
            <td><%= salesData[i][3] %></td>
        </tr>
        <%
            }
        %>
    </table>

    <p class="footer">&copy;2026-Isyraf</p>

</body>
</html>