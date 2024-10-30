<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Suma a doua numere</title>
</head>
<body>
    <h1>Calcularea sumei a doua numere</h1>

    <% 
        String num1Str = request.getParameter("num1");
        String num2Str = request.getParameter("num2");

        if (num1Str != null && num2Str != null) {
            try {
                int num1 = Integer.parseInt(num1Str);
                int num2 = Integer.parseInt(num2Str);
                int suma = num1 + num2;
                out.println("<p>Suma dintre " + num1 + " si " + num2 + " este: " + suma + "</p>");
            } catch (NumberFormatException e) {
                out.println("<p>Introdu numere valide</p>");
            }
        } else {
            out.println("<p>Trimite 'num1' și 'num2'</p>");
        }
    %>
</body>
</html>
