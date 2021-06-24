//
//  ListaOpcoesReceita.swift
//  MiniChallenge
//
//  Created by Maria Luiza Amaral on 23/06/21.
//

import SwiftUI


struct ReceitaSelecionada: Identifiable{
    var id = UUID()
    var versaoReceita: String
}

struct ListaOpcoesReceita: View {
    
    let versaoesDaReceita = [ReceitaSelecionada(versaoReceita: "Carne vermelha"),
                             ReceitaSelecionada(versaoReceita: "Carne de frango"),
                             ReceitaSelecionada(versaoReceita: "Vegetariano")]
    
    
    var body: some View {
        VStack{
            HStack{
                List(versaoesDaReceita) { versao in
                    VStack(alignment: .leading){
                        Text(versao.versaoReceita)
                            .font(.system(size:17, weight: .regular, design: .rounded))
                            //.padding()
                            //.frame(width: 340, height: 40, alignment: .leading)
                            
                            .background(Color(.systemGray6))
                    }
                    .listStyle(InsetGroupedListStyle())
                }
            }
        }
    }
}

struct ListaOpcoesReceita_Previews: PreviewProvider {
    static var previews: some View {
        ListaOpcoesReceita()
    }
}
