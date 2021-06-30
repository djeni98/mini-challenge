//
//  ContentView.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 22/06/21.
//

import SwiftUI

struct ContentView: View {
    @State var semanaPlanejada = false
    var body: some View {
        NavigationView {
            Home(
                semanaPlanejada: semanaPlanejada,
                noticias: listaDeNoticias
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

