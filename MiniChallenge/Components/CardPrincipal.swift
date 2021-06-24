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
                    .foregroundColor(.white)
                Image(imagem)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 210, alignment: .center)
                    .clipped()
                    .padding(.bottom, 110)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(tipoRefeicao.uppercased())
                        .font(.caption)
                        .padding(.bottom, 8)
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
                    
                }
                .padding(.top, 190)
                .padding(.horizontal, 25)
                
            }
            .frame(height: 310, alignment: .center)
            .cornerRadius(30)
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.2), radius: 20)
            
        }
    }
}

struct MainCard_Previews: PreviewProvider {
    static var previews: some View {
        CardPrincipal(receita: listaDeReceitas[3])
            .padding(20)
    }
}

