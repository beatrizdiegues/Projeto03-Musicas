/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.musicas;

import java.util.ArrayList;

/**
 *
 * @author beatriz
 */
public class dbBandas {
   private static ArrayList<bandas> banda;   
   //criando o array com as bandas
    public static ArrayList<bandas> getBanda(){
         if ( banda == null){
            banda = new ArrayList<> ();
            banda.add(new bandas("Banda 1","Rock","1970"));
            banda.add(new bandas("Banda 2","Samba","1952"));
            banda.add(new bandas("Banda 3","Jazz","1960"));
            banda.add(new bandas("Banda 4","Pop","1980"));
}
         return banda;
}
public static void addBanda(bandas x){
     getBanda().add(x);
}
public static void setBanda(int index, bandas x){
     getBanda().set(index,x);
}
public static void removeBanda(int index){
     getBanda().remove(index);
}   
}
