//
//  MainCard.swift
//  MiniChallenge
//
//  Created by Eros Maurilio on 23/06/21.
//

import SwiftUI

struct MainCard: View {
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
                    .frame(width: 340, height: 210, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipped()
                    .padding(.bottom, 110)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(tipoRefeição)
                        .font(.caption)
                        .padding(.bottom, 8)
                        .foregroundColor(Color(.systemGray))
                    
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
            .frame(width: 340, height: 310, alignment: .center)
            .cornerRadius(40)
            .shadow(radius: 20)
            
        }
    }
}

struct MainCard_Previews: PreviewProvider {
    static var previews: some View {
        MainCard()
    }
}

