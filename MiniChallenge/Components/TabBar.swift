//
//  TabBar.swift
//  MiniChallenge
//
//  Created by Maria Luiza Amaral on 28/06/21.
//

import SwiftUI


struct TabBar: View {
    
    enum TabItem {
        case inicio, semana, receitas, mercado
    }
    @State var selectedItem = TabItem.inicio
    
    init() {
        UITabBar.appearance().barTintColor = UIColor(Color("LightDarkBg")) // custom color.
       }

    @State var semanaPlanejada = true

    var body: some View {
        TabView(selection: $selectedItem) {
            NavigationView {
                Home(
                    semanaPlanejada: semanaPlanejada,
                    noticias: listaDeNoticias) {
                    selectedItem = TabItem.semana
                }
            }
            .tabItem {
                Image(systemName: self.selectedItem == TabItem.inicio ? "house.fill" : "house")
                Text("Inicio")
            }
            .tag(TabItem.inicio)
            


            NavigationView {
                Semana()
            }
            .tabItem {
                Image(systemName: "calendar")
                Text("Semana")
            }
            .tag(TabItem.semana)


            Text("WIP Receitas")
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
