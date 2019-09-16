/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.musicas;

import java.util.ArrayList;

/**
 *
 * @author User
 */
public class Album {
    private String nome;
    private int ano;
    private static ArrayList<Musica> musicas;
    
    public Album(String nome,int ano)
    {
        this.nome = nome;
        this.ano = ano;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public static ArrayList<Musica> getMusicas() {
        if (musicas == null)
        {
            musicas = new ArrayList<>();
            musicas.add(new Musica("Fear of the dark", "X"));
            musicas.add(new Musica("Fear of the dark", "X"));
            musicas.add(new Musica("Fear of the dark", "X"));
        }
    return musicas;
    }

}
