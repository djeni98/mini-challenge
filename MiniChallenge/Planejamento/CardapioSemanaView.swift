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
    @StateObject var controleLanches = ControleQuantidadeReceitasModel()

    @State var estaEditando = false
    @State var estaAnimando = false

    @State var desabilitarBotaoOrganizar = true
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {

                ListaReceitasDeRefeicao(tipoRefeicao: .cafeDaManha, estaEditando: estaEditando)
                    .environmentObject(controleCafeDaManha)

                ListaReceitasDeRefeicao(tipoRefeicao: .almoco, estaEditando: estaEditando)
                    .environmentObject(controleAlmoco)

                ListaReceitasDeRefeicao(tipoRefeicao: .jantar, estaEditando: estaEditando)
                    .environmentObject(controleJantar)

                ListaReceitasDeRefeicao(tipoRefeicao: .lanche, estaEditando: estaEditando)
                    .environmentObject(controleLanches)

                FilledButton(label: "Organizar Semana", desabilitado: $desabilitarBotaoOrganizar) {}
            }
        }.navigationTitle("Cardápio da semana")
        .navigationBarTitleDisplayMode(.large)
        .navigationBarItems(
            leading: Button("Editar") {},
            trailing: Button(
                action: {
                    withAnimation(.spring()) {
                        if estaAnimando { return }
                        estaEditando.toggle()
                        estaAnimando = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { estaAnimando = false }
                    }
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                }
            )
        )
    }
}

struct CardapioSemanaView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CardapioSemanaView()
        }
    }
}
