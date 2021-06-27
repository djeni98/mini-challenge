//
//  CardapioSemanaView.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 27/06/21.
//

import SwiftUI

struct CardapioSemanaView: View {

    @State var listaCafeDaManha: [ControleQuantidade] = []
    @State var listaAlmoco: [ControleQuantidade] = []
    @State var listaJantar: [ControleQuantidade] = []

    @State var listaLanches: [ControleQuantidade] = []
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ListaReceitasDeRefeicao(tipoRefeicao: .cafeDaManha, listaControle: $listaCafeDaManha)

                ListaReceitasDeRefeicao(tipoRefeicao: .almoco, listaControle: $listaAlmoco)

                ListaReceitasDeRefeicao(tipoRefeicao: .jantar, listaControle: $listaJantar)

                // ListaReceitasDeRefeicao(tipoRefeicao: .lanche, listaControle: $listaLanches)

            }
        }.navigationTitle("Cardápio da semana")
    }
}

struct CardapioSemanaView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CardapioSemanaView()
        }
    }
}
