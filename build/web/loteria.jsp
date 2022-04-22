<%-- 
    Document   : index
    Created on : 11 de abr. de 2022, 21:31:23
    Author     : Fatec
--%>

<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <h2> Loteria </h2>
        <hr>
        <h2> Seu numero da sorte </h2>    

        <%
            //int vetor[] = new int[5];            
            //int aleatorio = (int) (Math.random() * 60);
            
            //for(int i=0; i<=vetor.length;i++){
            //    vetor[i] = aleatorio;
            //}
            
            //for(int i=0; i<=vetor.length;i++){
                
            //}
            
            int numero;
            int vetor[] = new int[6];
            Random r = new Random();

            for(int i=0; i<vetor.length; i++){
                numero = r.nextInt(60);
                for(int j=0; j<vetor.length; j++){
                   if(numero == vetor[j] && j != i){
                         numero = r.nextInt(60);
                   }else{
                        vetor[i] = numero;
                   }
                }
            }
        %>
        
        <table border="1">
            <tr>
                <td><%= vetor[0]%></td>
                <td><%= vetor[1]%></td>
                <td><%= vetor[2]%></td>
                <td><%= vetor[3]%></td>
                <td><%= vetor[4]%></td>
                <td><%= vetor[5]%></td>
               
            </tr>
        </table>
</html>
