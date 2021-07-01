//
//  CardapioSemanaView.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 27/06/21.
//

import SwiftUI

struct CardapioSemanaView: View {
    var dataInicio: Date
    var dismissPreviousNavigation: () -> Void
    @Environment(\.presentationMode) var presentation

    init(dataInicio: Date = Date(), dismissPreviousNavigation: @escaping () -> Void) {
        self.dataInicio = dataInicio
        self.dismissPreviousNavigation = dismissPreviousNavigation
    }

    @EnvironmentObject var cardapioSemana: CardapioSemanaModel

    @StateObject var controleCafeDaManha = ControleQuantidadeReceitasModel()
    @StateObject var controleAlmoco = ControleQuantidadeReceitasModel()
    @StateObject var controleJantar = ControleQuantidadeReceitasModel()
    @StateObject var controleLanches = ControleQuantidadeReceitasModel()

    @State var estaEditando = false
    @State var estaAnimando = false

    @State var navegaOrganizaSemana = false
    @State var mostraTela = false

    @StateObject var controleGeral = ControleRefeicoesModel()

    func desabilitaBotao() -> Bool {
        return ![
            controleCafeDaManha, controleAlmoco, controleJantar
        ].allSatisfy { $0.lista.count == 7 }
    }

    var body: some View {
        ScrollView(showsIndicators: false) {
            if mostraTela {
                VStack(alignment: .leading) {
                    ListaReceitasDeRefeicao(tipoRefeicao: .cafeDaManha, estaEditando: estaEditando)
                        .environmentObject(controleCafeDaManha)

                    ListaReceitasDeRefeicao(tipoRefeicao: .almoco, estaEditando: estaEditando)
                        .environmentObject(controleAlmoco)

                    ListaReceitasDeRefeicao(tipoRefeicao: .jantar, estaEditando: estaEditando)
                        .environmentObject(controleJantar)

                    ListaReceitasDeRefeicao(tipoRefeicao: .lanche, estaEditando: estaEditando)
                        .environmentObject(controleLanches)

                    FilledButton(label: "Organizar Semana", desabilitado: desabilitaBotao()) {
                        controleGeral.dataInicio = dataInicio
                        controleGeral.cafeDaManha = controleCafeDaManha.lista
                        controleGeral.almoco = controleAlmoco.lista
                        controleGeral.janta = controleJantar.lista
                        controleGeral.lanches = controleLanches.lista
                        navegaOrganizaSemana = true
                    }.padding(.bottom)

                    NavigationLink(
                        destination: OrganizaRefeicaoLista() {
                            self.presentation.wrappedValue.dismiss()
                            dismissPreviousNavigation()
                        }.environmentObject(controleGeral)
                        .environmentObject(cardapioSemana),
                        isActive: $navegaOrganizaSemana,
                        label: {})
                }
            }
        }
        .onAppear {
            mostraTela = true
        }
        .navigationTitle("Cardápio da semana")
        .navigationBarTitleDisplayMode(.large)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(
            leading: Button("Editar") {
                self.presentation.wrappedValue.dismiss()
            }.font(.body),
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
            CardapioSemanaView() {}
                .environmentObject(CardapioSemanaModel())
        }
    }
}
