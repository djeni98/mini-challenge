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
                
                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(receita)
                            .font(.title3)
                            .bold()
                        
                        HStack {
                            Image(systemName: "clock")
                            Text("\(tempoPreparo) - \(nivel)")
                        }
                        .font(.caption)
                        .foregroundColor(Color(.systemGray))
                        Spacer()
                    }
                    .padding(.top, 170)
                    .padding(.horizontal, 25)
                    Spacer()
                }
            }
            .frame(height: 200, alignment: .leading)
            .cornerRadius(30)
            .shadow(radius: 20)
            
        }
    }
}

struct CardReduzido_Previews: PreviewProvider {
    static var previews: some View {
        CardReduzido()
            .padding(20)
    }
}
