//
//  MainCard.swift
//  MiniChallenge
//
//  Created by Eros Maurilio on 23/06/21.
//

import SwiftUI

struct CardPrincipal: View {
    var imagem = "Strogo"
    var tipoRefeição = "ALMOÇO"
    var receita = "Strogonoff"
    var nivel = "Iniciante"
    var tempoPreparo = "20 min"
    
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
                    Text(tipoRefeição)
                        .font(.caption)
                        .padding(.bottom, 8)
                        .foregroundColor(.accentColor)
                    
                    Text(receita)
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
        CardPrincipal()
            .padding(20)
    }
}

