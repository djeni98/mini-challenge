//
//  CardDetalhadoView.swift
//  MiniChallenge
//
//  Created by Eros Maurilio on 28/06/21.
//

import SwiftUI

struct CardDetalhadoView: View {
    var receita: Receita
    var namespace: Namespace.ID
    
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView {
                VStack {
                    CardPrincipal(receita: receita)
                        .matchedGeometryEffect(id: receita.id, in: namespace)
                        .frame(height: 400)
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
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .matchedGeometryEffect(id: "Container\(receita.id)", in: namespace)
        .statusBar(hidden: true)
        .edgesIgnoringSafeArea(.all)
        .transition(.hero)
        .zIndex(2)
    }
}

struct CardDetalhadoView_Previews: PreviewProvider {
    @Namespace static var namespace

    static var previews: some View {
        CardDetalhadoView(receita: listaDeReceitas[0], namespace: namespace)
    }
}
