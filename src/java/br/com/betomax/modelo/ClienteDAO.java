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

import br.com.betomax.entidade.Cliente;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ClienteDAO {
    
    private Cliente c;
    private Conexao conn;

   
    public ClienteDAO(){
        
    }
    public ClienteDAO(Cliente c) {        
        this.c = c;
        conn = new Conexao();
       
    }
    
    
    
    public void  adiciona (Cliente cliente) throws SQLException{
        conn = new Conexao();
        
        String sql = "insert into clientes (nome, endereco, telefone, email, senha) values(?,?,?,?,SHA(?))";
        
        PreparedStatement ps = conn.getConexao().prepareCall(sql);
        
        ps.setString(1, cliente.getNome());
        ps.setString(2, cliente.getEndereco());
        ps.setInt(3, cliente.getTelefone());
        ps.setString(4, cliente.getEmail());
        ps.setString(5, cliente.getSenha());
        
        ps.execute();
        
    }
    
   /* public Cliente login(Cliente cliente) throws SQLException {
       
        conn = new Conexao();
      
         
        String sql = "select * from clientes where email='?' and senha=SHA('?')";
        
        PreparedStatement ps = conn.getConexao().prepareCall(sql);
        
        try {
            ps.setString(4, cliente.getEmail());
            ps.setString(5, cliente.getSenha());
            
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                cliente.setEmail(rs.getString("email"));
                cliente.setNome(rs.getString("nome"));
                cliente.setLogin(true);
                cliente.setSenha("");
            }

        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cliente;
    }*/
        
    
    
    

    

    
    
}
