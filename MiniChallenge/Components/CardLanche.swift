//
//  CardLanche.swift
//  MiniChallenge
//
//  Created by Eros Maurilio on 30/06/21.
//

import SwiftUI

struct CardLanche: View {
    var imagem = "receitaChocolateQuenteCremoso"
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
            Rectangle()
                .foregroundColor(.clear)
                .background(
                    Image(imagem)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipped())
            
                ZStack {

                }
                .zIndex(1)
               
                
                ZStack {
                    VStack {
                        Rectangle()
                            .frame(height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color("LightDarkBg"))
                    }

                    VStack(alignment: .leading, spacing: 4) {


                        Text("Lanche".uppercased())
                            .font(.caption)
                            .padding(.bottom, 14)
                            .foregroundColor(.accentColor)

                        Text("Lembre-se de comer um lanche")
                            .font(.title3)
                            .bold()

                    }
                    .padding(.horizontal, 15)
                    .padding(.bottom, 20)
                    .foregroundColor(Color("LightDarkText"))
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
            .padding(.horizontal)
            .previewLayout(.fixed(width: 375, height: 400))
            // .frame(width: 350, height: 300)

    }
}
