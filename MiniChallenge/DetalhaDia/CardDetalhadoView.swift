//
//  CardDetalhadoView.swift
//  MiniChallenge
//
//  Created by Eros Maurilio on 28/06/21.
//

import SwiftUI

struct CardDetalhadoView: View {
    var receita: Receita
    @Environment(\.presentationMode) var presentation 
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    ZStack(alignment: .topTrailing) {
                        CardPrincipal(receita: receita, corner: 0)
                            .frame(height: 400)

                        Button(action: {
                            self.presentation.wrappedValue.dismiss()

                        }, label: {
                            Image(systemName: "xmark.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(Color("LightDarkBg"))
                        })
                        .padding()
                    }

                    Divider()

                    DescricaoIngredientesSubview(ingredientes: receita.ingredientes)
                        .padding(.leading)
                        .padding()

                    DescricaoModoPreparoSubview(modoPreparo: receita.modoPreparo)

                        .padding(.leading)
                        .padding()
                }
            }
        }
        .background(Color("LightDarkBg"))
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarHidden(true)
    }
}

struct CardDetalhadoView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetalhadoView(receita: listaDeReceitasPronta[0])
            .preferredColorScheme(.dark)
    }
}
