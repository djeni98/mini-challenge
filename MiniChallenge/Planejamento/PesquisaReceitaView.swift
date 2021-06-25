//
//  PesquisaReceitaView.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 24/06/21.
//

import SwiftUI

struct PesquisaReceitaView: View {
    var tipoRefeicao: TipoDeRefeicao

    @State var query: String = ""

    var receitas: [Receita] {
        listaDeReceitas.filter { query.isEmpty || $0.nome.uppercased().contains(query.uppercased())
        }
    }

    var body: some View {
        ScrollView {
            VStack {
                SearchField(query: $query)
                    .padding(.bottom)

                ForEach(receitas) { receita in
                    CardReduzido(receita: receita)
                        .padding(.bottom)
                }
            }.padding(.horizontal)
        }
        .navigationTitle(tipoRefeicao.toString())
    }
}

struct PesquisaReceitaView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PesquisaReceitaView(tipoRefeicao: .almoco)
        }
    }
}
