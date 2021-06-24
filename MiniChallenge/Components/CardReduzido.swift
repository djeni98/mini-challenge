//
//  CardReduzido.swift
//  MiniChallenge
//
//  Created by Eros Maurilio on 24/06/21.
//

import SwiftUI

struct CardReduzido: View {
    var imagem = "Strogo"
    var receita = "Strogonoff"
    var nivel = "Iniciante"
    var tempoPreparo = "20 min"
    
    var body: some View {
        VStack(alignment: .leading) {
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
                    .foregroundColor(.accentColor)
                    Spacer()
                }
                .padding(.top, 170)
                .padding(.horizontal, 25)
            }
            .frame(height: 200, alignment: .leading)
            .cornerRadius(20)
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.2), radius: 20)
            
        }
    }
}

struct CardReduzido_Previews: PreviewProvider {
    static var previews: some View {
        CardReduzido()
            .padding(20)
    }
}
