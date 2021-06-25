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
                    .frame(minWidth: 320, minHeight: 210)
                    .clipped()
                    .padding(.bottom, 110)
                    Spacer()
                
                VStack(alignment: .leading, spacing: 4) {
                    Spacer()
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
                    .padding(.bottom)
                    
                    
                    
                }
                .padding(.horizontal, 25)
                
                
            }
            .frame(height: .infinity, alignment: .center)
        }
    }
}

struct MainCard_Previews: PreviewProvider {
    static var previews: some View {
        CardPrincipal()
            .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

    }
}

