//
//  OrganizaRefeicaoLista.swift
//  MiniChallenge
//
//  Created by Paulo Tadashi Tokikawa on 30/06/21.
//

import SwiftUI

struct OrganizaRefeicaoLista: View {
    @EnvironmentObject var controle: ControleRefeicoesModel
    
    @State var editouCafe = false
    @State var editouAlmoco = false
    @State var editouJantar = false
    
    var body: some View {
        ScrollView{
            VStack{
                NavigationLink(
                    destination: PlanejamentoLista(refeicao: .cafeDaManha, editou: $editouCafe).environmentObject(controle),
                    label: {
                        CardOrganizar(refeicao: .cafeDaManha, estaOrganizado: $editouCafe)
                    })
                    .padding(.bottom)
                
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
                
                FilledButton(label: "Prosseguir", desabilitado: .constant(!(editouCafe && editouJantar && editouCafe)), buttonAction: {})
                    .padding(.vertical)
            }
        }
        .padding()
        .navigationTitle("Organize o cardápio")
    }
}

struct OrganizaRefeicaoLista_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView{            OrganizaRefeicaoLista().environmentObject(ControleRefeicoesModel.criaTeste())
        }
        .preferredColorScheme(.dark)
    }
}
