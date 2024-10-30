<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Numaratoarea vocalelor</title>
</head>
<body>
    <h1>Numarul de vocale intr-un text</h1>

    <% 
        String text = request.getParameter("text");

        if (text != null) {
            int vocaleCount = 0;
            text = text.toLowerCase(); 

            for (int i = 0; i < text.length(); i++) {
                char c = text.charAt(i);
                if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
                    vocaleCount++;
                }
            }
            out.println("<p>Textul \"" + text + "\" contine " + vocaleCount + " vocale</p>");
        } else {
            out.println("<p>Trimite parametrul 'text'</p>");
        }
    %>
</body>
</html>
