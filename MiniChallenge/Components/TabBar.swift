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
    
    var body: some View {
        TabView(selection: $selectedItem) {
            Text("")
                .tabItem {
                    Image(systemName: self.selectedItem == TabItem.inicio ? "house.fill" : "house")
                    Text("Inicio")
                }
                .tag(TabItem.inicio)
            
            Text("")
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Semana")
                }
                .tag(TabItem.semana)
            
            Text("")
                .tabItem {
                    Image(systemName:  self.selectedItem == TabItem.receitas ? "book.fill" : "book")
                    Text("Receitas")
                }
                .tag(TabItem.receitas)
            Text("")
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
