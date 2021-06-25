//
//  PageAnimation.swift
//  MiniChallenge
//
//  Created by Eros Maurilio on 24/06/21.
//

import SwiftUI

struct PageAnimation: View {
    
    @State var estaExpandido = false
    @Namespace var namespace
    
    var imagem = "Strogo"
    var tipoRefeição = "ALMOÇO"
    var receita = "Strogonoff"
    var nivel = "Iniciante"
    var tempoPreparo = "20 min"
    
    
    
    var body: some View {
        ZStack {
            
            //MARK: CardView -
            VStack {
                if !estaExpandido {
                    VStack {
//                        ForEach(cards) { card in
                        ScrollView {
                            VStack {
                                CardPrincipal()
                                    .clipShape(RoundedRectangle(cornerRadius: 30))
                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                    .matchedGeometryEffect(id: "Card", in: namespace)
                                    .frame(maxHeight: 300)
                                    .onTapGesture {
                                        withAnimation(.spring()) {
                                            estaExpandido.toggle()
                                        }
                                    }
                                    .padding()
                            }
                            .matchedGeometryEffect(id: "Container", in: namespace)
//                        }
                        }
                    }
                }
            }
            
            //MARK: CardExpandido -
            if estaExpandido {
                VStack {
                    ScrollView {
                        CardPrincipal()
                            .cornerRadius(30)
                            .matchedGeometryEffect(id: "Card", in: namespace)
                            .frame(idealHeight: 400)
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    estaExpandido.toggle()
                                }
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
                .background(Color.clear)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .statusBar(hidden: true)
                .matchedGeometryEffect(id: "Container", in: namespace)
                .edgesIgnoringSafeArea(.all)
                .transition(.hero)
                
                
            }
        }
    }
}


struct PageAnimation_Previews: PreviewProvider {
    static var previews: some View {
        PageAnimation()
    }
}
