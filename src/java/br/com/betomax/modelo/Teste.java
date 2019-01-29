/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.betomax.modelo;

import br.com.betomax.entidade.Cliente;
import java.sql.SQLException;

/**
 *
 * @author doug
 */
public class Teste {
    
    public static void main(String[] args) {
        Cliente cliente = new Cliente();
        ClienteDAO dao = new ClienteDAO();
        
        cliente.setNome("Douglas");
        cliente.setEndereco("Rua x");
        cliente.setTelefone(121212);
        cliente.setEmail("hahahaha");
        cliente.setSenha("Douglas123");
        
        try {
            dao.adiciona(cliente);
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
}
