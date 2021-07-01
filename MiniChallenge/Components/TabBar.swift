//
//  TabBar.swift
//  MiniChallenge
//
//  Created by Maria Luiza Amaral on 28/06/21.
//

import SwiftUI


struct TabBar: View {

    @StateObject var cardapioSemana = CardapioSemanaModel()
    
    enum TabItem {
        case inicio, semana, receitas, mercado
    }
    @State var selectedItem = TabItem.inicio
    
    init() {
        UITabBar.appearance().barTintColor = UIColor(Color("LightDarkBg")) // custom color.
       }

    @State var semanaPlanejada = true

    func semanaTabViewItem() -> some View {
        if cardapioSemana.estaPlanejada {
            return AnyView(NavigationView {
                SemanaPlanejadaView(){
                    selectedItem = TabItem.inicio
                }.environmentObject(cardapioSemana)
            })
        } else {
            return AnyView(NavigationView {
                Semana() {
                    selectedItem = TabItem.inicio
                }.environmentObject(cardapioSemana)
            })
        }
    }


    var body: some View {
        TabView(selection: $selectedItem) {
            NavigationView {
                Home(
                    semanaPlanejada: cardapioSemana.estaPlanejada,
                    noticias: listaDeNoticias) {
                    selectedItem = TabItem.semana
                }.environmentObject(cardapioSemana)
            }
            .tabItem {
                Image(systemName: self.selectedItem == TabItem.inicio ? "house.fill" : "house")
                Text("Inicio")
            }
            .tag(TabItem.inicio)
            


            semanaTabViewItem()
            .tabItem {
                Image(systemName: "calendar")
                Text("Semana")
            }
            .tag(TabItem.semana)


            NavigationView {
                ReceitasView()
            }
            .tabItem {
                Image(systemName:  self.selectedItem == TabItem.receitas ? "book.fill" : "book")
                Text("Receitas")
            }
            .tag(TabItem.receitas)


            NavigationView {
                ListaMercado()

            }
            .tabItem {
                Image(systemName: self.selectedItem == TabItem.mercado ? "cart.fill" : "cart")
                Text("Mercado")
            }
            .tag(TabItem.mercado)
        }
        
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TabBar()
                .preferredColorScheme(.dark)
            
            TabBar()
                .preferredColorScheme(.light)
        }
        .previewLayout(.fixed(width: 375, height: 100))
        .padding()
        
    }
}
