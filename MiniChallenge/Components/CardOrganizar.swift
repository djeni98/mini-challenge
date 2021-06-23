//
//  CardOrganizar.swift
//  MiniChallenge
//
//  Created by Eros Maurilio on 23/06/21.
//

import SwiftUI

struct CardOrganizar: View {
    var imagem = "Strogo"
    var receita = "Strogonoff"
    var buttonAction: () -> Void
    
    
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                
                Image(imagem)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 340, height: 150, alignment: .center)
                    .clipped()
                    .padding(.bottom, 110)
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text(receita)
                            .font(.title3)
                            .bold()
                        Spacer()
                        
                        Button(action: buttonAction) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 24)
                                    .frame(width: 100, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color("Laranja"))
                                Text("Organizar")
                                    .font(.body)
                                    .bold()
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
                .padding(.top, 120)
                .padding(.horizontal, 25)
                
            }
            .frame(width: 340, height: 200, alignment: .center)
            .cornerRadius(30)
            .shadow(radius: 20)
            
        }
    }
}


struct CardOrganizar_Previews: PreviewProvider {
    static var previews: some View {
        CardOrganizar { print("Run Action") }
    }
}

