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
            ScrollView {
                ZStack(alignment: .topTrailing) {
                    CardPrincipal(receita: receita)
                        .frame(height: 400)
                    
                    Button(action: {
                        self.presentation.wrappedValue.dismiss()
                        
                    }, label: {
                        Image(systemName: "xmark.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(.leading, 300)
                            .foregroundColor(Color("LightDarkBg"))
                    })
                    .padding()
                }
                
                Divider()
                
                Text("""
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam felis elit, porta ac mollis non, venenatis sed justo.
                            
                            Maecenas convallis auctor nibh ac pulvinar. Integer porttitor, velit vitae aliquam tempor, lectus elit maximus turpis, et semper magna quam et velit.
                            
                            Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed maximus metus vel sodales congue.
                            
                            Cras euismod neque euismod odio sagittis porttitor. Praesent magna tellus, convallis vel elit elementum, dignissim pretium tellus. Praesent efficitur viverra aliquet.
                            Maecenas convallis auctor nibh ac pulvinar. Integer porttitor, velit vitae aliquam tempor, lectus elit maximus turpis, et semper magna quam et velit.
                            
                            Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed maximus metus vel sodales congue.
                            
                            Cras euismod neque euismod odio sagittis porttitor. Praesent magna tellus, convallis vel elit elementum, dignissim pretium tellus. Praesent efficitur viverra aliquet.
                            """)
                    .padding(40)
            }
        }
        .background(Color("LightDarkBg"))
        .navigationBarHidden(true)
    }
}

struct CardDetalhadoView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetalhadoView(receita: listaDeReceitas[0])
    }
}
