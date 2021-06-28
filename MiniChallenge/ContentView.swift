//
//  ContentView.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 22/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CardAnimationView(receitas: listaDeReceitas, receita: listaDeReceitas[0])
//        PageAnimation(receita: listaDeReceitas[0])

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

