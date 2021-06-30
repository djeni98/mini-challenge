//
//  MainCard.swift
//  MiniChallenge
//
//  Created by Eros Maurilio on 23/06/21.
//

import SwiftUI

struct CardPrincipal: View {
    var receita: Receita
    var imagem: String {
        guard let nomeImagem = receita.nomeImagem else {
            return "sem-imagem"
        }
        return nomeImagem
    }
    var nome: String { receita.nome }
    var nivel: String { receita.nivelDificuldade.toString() }
    var tempoPreparo: String { receita.tempoPreparo }
    var tipoRefeicao: String { receita.categoria.toString() }
    
    var body: some View {
        VStack {
            ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .background(
                    Image(imagem)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipped())
            
                ZStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Spacer()

                        
                        Text(tipoRefeicao.uppercased())
                            .font(.caption)
                            .padding(.bottom, 14)
                            .foregroundColor(.accentColor)
                        
                        Text(nome)
                            .font(.title3)
                            .bold()
                        
                        HStack {
                            Text(nivel)
                            Spacer()
                            Image(systemName: "clock")
                            Text(tempoPreparo)
                        }
                        .font(.caption)
                        .foregroundColor(Color(.systemGray))
                        .padding(.bottom)
                        
                    }
                    .padding(.horizontal, 30)
                    .padding(.bottom, 12)
                    .foregroundColor(Color("LightDarkText"))
                }
                .zIndex(1)
               
                
                ZStack {
                    VStack {
                        Spacer()
                        Rectangle()
                            .frame(height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color("LightDarkBg"))
                    }
                }
            }
            
        }
        .cornerRadius(20)
    }
}

struct MainCard_Previews: PreviewProvider {
    static var previews: some View {
        CardPrincipal(receita: listaDeReceitas[0])
        
        
            
    }
}

