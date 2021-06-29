//
//  ListaReceitasParaSemana.swift
//  MiniChallenge
//
//  Created by Maria Luiza Amaral on 23/06/21.
//

import SwiftUI


struct ListaReceitasParaOrganizar: View {
    var receita: Receita
    var diaSemana: String
    var data: Int
    
    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .center){
                    Text(diaSemana)
                        .font(.system(size:18, weight: .semibold, design: .rounded))
                        .foregroundColor(.accentColor)
                    Text("\(data)")
                        .font(.subheadline)
                        .foregroundColor(Color(.systemGray))
                    
                }
                Divider()
                
                VStack{
                    VStack(alignment: .leading){
                        Text(receita.nome)
                            .font(.body)
                        HStack{
                            Image(systemName: "clock")
                                .frame(width: 15, height: 5)
                                .foregroundColor(Color(.systemGray2))
                            
                            VStack{
                                Text("\(receita.tempoPreparo) de preparo")
                                    .font(.footnote)
                                    .foregroundColor(Color(.systemGray2))
                                
                            }
                        }
                        .padding(.top,1)
                        
                    }
                    .padding(.leading)
                }
                Spacer()
//                VStack(alignment: .trailing){
//                    Image(systemName: "line.horizontal.3")
//                        .foregroundColor(Color(.systemGray2))
//                }
            }
            .padding()
            //
        }
        
    }
    
}



struct ListaReceitasParaOrganizar_Previews: PreviewProvider {
    static var previews: some View {
        List {
            ListaReceitasParaOrganizar(receita: Receita(id: 1, categoria: .refeicaoPrincipal, nivelDificuldade: .iniciante, nome: "Strogonoff", tempoPreparo: "40 minutos", ingredientes: [Ingrediente(quantidade: 10, nome: "cogumelos", descricao: "limpos e sem manchas")], modoPreparo: "1. Cozinhe os cogumelos"), diaSemana: "S", data: 21)
        }
    }
}


