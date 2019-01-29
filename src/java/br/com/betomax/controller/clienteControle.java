/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.betomax.controller;

/**
 *
 * @author doug
 */

import br.com.betomax.entidade.Cliente;
import br.com.betomax.modelo.ClienteDAO;
import java.sql.SQLException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class clienteControle {
    
     @RequestMapping("/index")
    public String index(){
        return "index";
    }
    
    @RequestMapping("/cadastro")
    public String cadastrar(){
        return "cadastro";
    }
    
    @RequestMapping("/saudacao")
    public String saudacao(Model model, Cliente cliente){
        
        ClienteDAO dao = new ClienteDAO();
        
        try {
            dao.adiciona(cliente);
            
            model.addAttribute("nome",cliente.getNome());
            
        } catch (SQLException e) {
            System.out.println(e);
        }
        return "saudacao";
    }
        
    @RequestMapping("/login")
    public String login(){
        return "login";
    }
    
    @RequestMapping("/home")
    public String home(){
        return "home";
    }
    
    @RequestMapping("/erro")
    public String erro(){
        return "erro";
    }
       
      
    
}
