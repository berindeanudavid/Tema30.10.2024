<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Par sau Impar</title>
</head>
<body>
    <h1>Verificarea unui numar</h1>

    <% 
        String numStr = request.getParameter("num");

        if (numStr != null) {
            try {
                int num = Integer.parseInt(numStr);
                if (num % 2 == 0) {
                    out.println("<p>Numarul " + num + " este par</p>");
                } else {
                    out.println("<p>Numarul " + num + " este impar</p>");
                }
            } catch (NumberFormatException e) {
                out.println("<p>Introdu un numar valid</p>");
            }
        } else {
            out.println("<p>Trimite parametrul 'num'</p>");
        }
    %>
</body>
</html>
