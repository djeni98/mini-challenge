//
//  OrganizaRefeicaoLista.swift
//  MiniChallenge
//
//  Created by Paulo Tadashi Tokikawa on 30/06/21.
//

import SwiftUI

struct OrganizaRefeicaoLista: View {
    var dismissPreviousNavigation: () -> Void
    @Environment(\.presentationMode) var presentation

    @EnvironmentObject var controle: ControleRefeicoesModel
    @EnvironmentObject var cardapioSemana: CardapioSemanaModel

    
    @State var editouCafe = false
    @State var editouAlmoco = false
    @State var editouJantar = false
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack{
                NavigationLink(
                    destination: PlanejamentoLista(refeicao: .cafeDaManha, editou: $editouCafe).environmentObject(controle),
                    label: {
                        CardOrganizar(refeicao: .cafeDaManha, estaOrganizado: $editouCafe)
                    })
                    .padding(.vertical)
                
                NavigationLink(
                    destination: PlanejamentoLista(refeicao: .almoco, editou: $editouAlmoco).environmentObject(controle),
                    label: {
                        CardOrganizar(refeicao: .almoco, estaOrganizado: $editouAlmoco)
                    })
                    .padding(.vertical)

                NavigationLink(
                    destination: PlanejamentoLista(refeicao: .jantar, editou: $editouJantar).environmentObject(controle),
                    label: {
                        CardOrganizar(refeicao: .jantar, estaOrganizado: $editouJantar)
                    })
                    .padding(.vertical)
                
                FilledButton(label: "Prosseguir", desabilitado: !(editouCafe && editouJantar && editouCafe), buttonAction: {
                    cardapioSemana.update(cafe: controle.cafeDaManha, almoco: controle.almoco, janta: controle.janta, lanches: controle.lanches)

                    self.presentation.wrappedValue.dismiss()
                    dismissPreviousNavigation()
                })
                    .padding(.vertical)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Organize o cardápio")
    }
}

struct OrganizaRefeicaoLista_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView{
            OrganizaRefeicaoLista() {}
                .environmentObject(ControleRefeicoesModel.criaTeste())
                .environmentObject(CardapioSemanaModel())
        }
        .preferredColorScheme(.dark)
    }
}
