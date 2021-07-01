//
//  CardLanche.swift
//  MiniChallenge
//
//  Created by Eros Maurilio on 30/06/21.
//

import SwiftUI

struct CardLanche: View {
    var imagem = "sem-imagem"
    
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

                        
                        Text("Lanche".uppercased())
                            .font(.caption)
                            .padding(.bottom, 14)
                            .foregroundColor(.accentColor)
                        
                        Text("Lembre-se de comer um lanche")
                            .font(.title3)
                            .bold()
                        
                    }
                    .padding(.horizontal, 30)
                    .padding(.bottom, 40)
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
        .shadow(radius: 10)
        
    }
}

struct CardLanche_Previews: PreviewProvider {
    static var previews: some View {
        CardLanche()
            .shadow(radius: 10)
            .frame(width: 350, height: 300)

    }
}
