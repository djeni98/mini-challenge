//
//  ListaReceitasParaSemana.swift
//  MiniChallenge
//
//  Created by Maria Luiza Amaral on 23/06/21.
//

import SwiftUI


struct ListaReceitasParaOrganizar: View {
    var receitas: [Receita]
    var diaSemana: String
    var data: Int
    
    var body: some View {
        VStack{
            HStack{
                List(receitas) { receita in
                    VStack(alignment: .center){
                        Text(receita.diaSemana)
                            .font(.system(size:18, weight: .semibold, design: .rounded))
                            .foregroundColor(.orange)
                        Text("\(receita.data)")
                            .font(.system(size:15, weight: .regular, design: .rounded))
                            .foregroundColor(Color(.systemGray))
                        
                    }
                    Divider()
                    
                    VStack{
                        VStack(alignment: .leading){
                            Text(receita.receita.nome)
                                .font(.system(size:18, weight: .regular, design: .rounded))
                            HStack{
                                Image(systemName: "clock")
                                    .frame(width: 15, height: 5)
                                    .foregroundColor(Color(.systemGray2))

                                VStack{
                                    Text("\(receita.receita.tempoPreparo) de preparo")
                                        .font(.system(size:14, weight: .regular, design: .rounded))
                                        .foregroundColor(Color(.systemGray2))

                                }
                            }
                            .padding(.top,1)

                        }
                        .padding(.leading)
                    }
                    VStack(alignment: .trailing){
                        Image(systemName: "line.horizontal.3")
                            .foregroundColor(Color(.systemGray2))
                    }
                    .padding(.leading, 65)
                }
                .padding()
                
            }
            
        }
        
    }
}

struct ListaReceitasParaOrganizar_Previews: PreviewProvider {
    static var previews: some View {
        ListaReceitasParaOrganizar(
            [Receita(categoria: .refeicaoPrincipal, nivelDificuldade: .iniciante, nome: "Strogonoff", tempoPreparo: "40 minutos", ingredientes: [Ingrediente(quantidade: 10, nome: "cogumelos", descricao: "limpos e sem manchas")], modoPreparo: "1. Cozinhe os cogumelos", diaSemana: "S", data: 21)])
    }
}

