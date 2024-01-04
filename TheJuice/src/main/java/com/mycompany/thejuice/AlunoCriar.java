package com.mycompany.thejuice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

public class AlunoCriar {
    public void Criar(Aluno x){
            Connection con = Conexao.getConnection();
            PreparedStatement stmt = null;
            
            try{
                stmt = con.prepareStatement("insert into Alunos (Nome, Nascimento, CPF, Telefone, Senha, Registro) values (?,?,?,?,?, now())");
                stmt.setString(1,x.getNome());
                stmt.setString(2,x.getNascimento());
                stmt.setString(3,x.getCPF());
                stmt.setString(4,x.getTelefone());
                stmt.setString(5,x.getSenha());
                
                stmt.executeUpdate();
                
            }catch(SQLException ex){
                JOptionPane.showMessageDialog(null, "Erro a salvar os dados");
            }finally{
                Conexao.closeConnection(con, stmt);
            }
    }
    
    public List<Aluno> read(){
            Connection con = Conexao.getConnection();
            PreparedStatement stmt = null;
            ResultSet rs = null;
            
            List<Aluno> alunos = new ArrayList<>();
            
            try{
                stmt = con.prepareStatement("select * from Alunos");
                
                rs = stmt.executeQuery();
                
                while(rs.next()){
                    Aluno  aluno = new Aluno();
                    
                    aluno.setId(rs.getInt("Id"));
                    aluno.setNome(rs.getString("Nome"));
                    aluno.setNascimento(rs.getString("Nascimento"));
                    aluno.setCPF(rs.getString("CPF"));
                    aluno.setTelefone(rs.getString("Telefone"));
                    aluno.setSenha(rs.getString("Senha"));
                    aluno.setRegistro(rs.getString("Registro"));
                    
                    alunos.add(aluno);
                }
                
            }catch(SQLException ex){
                JOptionPane.showMessageDialog(null, "Erro ao exibir os dados");
            }finally{
                Conexao.closeConnection(con, stmt, rs);
            }
            
    return alunos;
    }
}
