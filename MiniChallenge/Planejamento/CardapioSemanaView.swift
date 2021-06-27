//
//  CardapioSemanaView.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 27/06/21.
//

import SwiftUI

struct CardapioSemanaView: View {

    @StateObject var controleCafeDaManha = ControleQuantidadeReceitasModel()
    @StateObject var controleAlmoco = ControleQuantidadeReceitasModel()
    @StateObject var controleJantar = ControleQuantidadeReceitasModel()

    // @State var listaLanches: [ControleQuantidade] = []
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ListaReceitasDeRefeicao(tipoRefeicao: .cafeDaManha)
                    .environmentObject(controleCafeDaManha)

                ListaReceitasDeRefeicao(tipoRefeicao: .almoco)
                    .environmentObject(controleAlmoco)

                ListaReceitasDeRefeicao(tipoRefeicao: .jantar)
                    .environmentObject(controleJantar)

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
