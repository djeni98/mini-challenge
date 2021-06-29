//
//  CardOrganizar.swift
//  MiniChallenge
//
//  Created by Eros Maurilio on 23/06/21.
//

import SwiftUI

struct CardOrganizar: View {
    var receita: Receita
    var estaOrganizado: Bool
    var buttonAction: () -> Void
  
    var imagem: String {
        guard let nomeImagem = receita.nomeImagem else {
            return "sem-imagem"
        }
        return nomeImagem
    }
    var nome: String { receita.nome }
    var nivel: String { receita.nivelDificuldade.toString() }
    var tempoPreparo: String { receita.tempoPreparo }
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                
                Image(imagem)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 150, alignment: .center)
                    .clipped()
                    .padding(.bottom, 110)
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text(nome)
                            .font(.title3)
                            .bold()
                        Spacer()
                        
                        Button(action: buttonAction) {
                            ZStack {
                                if !estaOrganizado {
                                    RoundedRectangle(cornerRadius: 24)
                                        .foregroundColor(.accentColor)
                                        .frame(width: 100, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    
                                } else {
                                    RoundedRectangle(cornerRadius: 24)
                                        .stroke(Color.accentColor, lineWidth: 2)
                                        .foregroundColor(.accentColor)
                                        .frame(width: 100, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                                }
                                Text(!estaOrganizado ? "Organizar" : "Editar")
                                    .font(.body)
                                    .bold()
                                    .foregroundColor(!estaOrganizado ? .white : .accentColor)
                            }
                        }
                    }
                }
                .padding(.top, 120)
                .padding(.horizontal, 25)
                
            }
            .frame(height: 200, alignment: .center)
            .cornerRadius(20)
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.2), radius: 20)
            
        }
    }
}


struct CardOrganizar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardOrganizar(receita: listaDeReceitas[0], estaOrganizado: false) { print("Run Action") }
                       .padding()
            CardOrganizar(receita: listaDeReceitas[3], estaOrganizado: true) { print("Run Action") }
                       .padding()
               }.previewLayout(.fixed(width: 400, height: 400))
        
    }
}

