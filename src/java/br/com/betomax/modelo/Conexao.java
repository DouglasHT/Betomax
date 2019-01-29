/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.betomax.modelo;

/**
 *
 * @author doug
 */
import java.sql.*;
import java.util.logging.Logger;
import java.util.logging.Level;
public class Conexao {
    
    
    
    private Connection conn;
   
      private void conectar(){
          System.out.println("Conectadno ao banco ...");
          try {
              Class.forName("com.mysql.jdbc.Driver");
              conn = DriverManager.getConnection("jdbc:mysql://localhost/betomax", "root", "unifeg");
              System.out.println("Conectado");
          } catch (ClassNotFoundException e) {
              System.out.println("Classe nao encontrada, adicione o driver nas bibliotecas");
              Logger.getLogger(Conexao.class.getName()).log(Level.SEVERE, null, e);
          } catch (SQLException e){
              System.out.println(e);
          }
          
          
      
      }
      
      public Connection getConexao(){
              conectar();
              return conn;
          }
      
       
}
