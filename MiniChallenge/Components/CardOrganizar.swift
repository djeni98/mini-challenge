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
    var estaOrganizado: Bool
    
    var body: some View {
        VStack {
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
                    HStack {
                        Text(receita)
                            .font(.title3)
                            .bold()
                        Spacer()
                        
                        Button(action: buttonAction) {
                            ZStack {
                                if estaOrganizado {
                                    RoundedRectangle(cornerRadius: 24)
                                        .foregroundColor(.accentColor)
                                        .frame(width: 100, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    
                                } else {
                                    RoundedRectangle(cornerRadius: 24)
                                        .stroke(Color("Laranja"), lineWidth: 2)
                                        .foregroundColor(.accentColor)
                                        .frame(width: 100, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                                }
                                Text(estaOrganizado ? "Organizar" : "Editar")
                                    .font(.body)
                                    .bold()
                                    .foregroundColor(estaOrganizado ? .white : .accentColor)
                            }
                        }
                    }
                }
                .padding(.top, 120)
                .padding(.horizontal, 25)
                
            }
            .frame(height: 200, alignment: .center)
            .cornerRadius(30)
            .shadow(radius: 20)
            
        }
    }
}


struct CardOrganizar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardOrganizar(buttonAction: {
                print("Run Action")
            }, estaOrganizado: true)
                       .padding()
            
            CardOrganizar(buttonAction: {
                print("Run Action")
            }, estaOrganizado: false)
                       .padding()
               }.previewLayout(.fixed(width: 400, height: 400))
        
    }
}

