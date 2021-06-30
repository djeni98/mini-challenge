//
//  ListaOpcoesReceita.swift
//  MiniChallenge
//
//  Created by Maria Luiza Amaral on 23/06/21.
//

import SwiftUI


struct ReceitaSelecionada: Identifiable{
    var id: Int
    var versaoReceita: String
}

struct ListaOpcoesReceita: View {
    var versaoesDaReceita : [ReceitaSelecionada]
    
    @State var selected = ""
    
    var body: some View {
        VStack(alignment: .leading){
            List(versaoesDaReceita) { versao in
                Button(action: {
                    self.selected = versao.versaoReceita
                }){
                    HStack{
                        Text(versao.versaoReceita)
                            .font(.subheadline)
                        Spacer()
                        ZStack{
                            Image(systemName: self.selected == versao.versaoReceita ? "largecircle.fill.circle" : "circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 15, height: 15)
                                .foregroundColor(Color("LightDarkText"))
                        }
                    }.padding(.horizontal)
                }
            }
            
        }
    }
}

struct ListaOpcoesReceita_Previews: PreviewProvider {
    static var previews: some View {
        ListaOpcoesReceita( versaoesDaReceita:[ReceitaSelecionada(id: 1, versaoReceita: "Carne vermelha"),ReceitaSelecionada(id: 2, versaoReceita: "Carne de frango"),ReceitaSelecionada(id: 3, versaoReceita: "Vegetariano")])
            .preferredColorScheme(.dark)
        
        
    }
    
}
