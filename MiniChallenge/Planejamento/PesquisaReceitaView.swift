//
//  PesquisaReceitaView.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 24/06/21.
//

import SwiftUI

struct PesquisaReceitaView: View {
    var tipoRefeicao: TipoDeRefeicao
    @Environment(\.presentationMode) var presentation
    
    @State var searchBar = false
    @State var receitas: [Receita] = []
    @State var query: String = ""
    
    //    var receitas: [Receita] {
    //        listaDeReceitas.filter { query.isEmpty || $0.nome.uppercased().contains(query.uppercased())
    //        }
    //    }
    
    var body: some View {
        ScrollView {
            VStack {
                if searchBar {
                    SearchField(query: $query)
                        .transition(AnyTransition.opacity.combined(with: .move(edge: .trailing)))
                        .padding(.vertical)
                }
                
                ForEach(receitas) { receita in
                    CardReduzido(receita: receita) {
                        self.presentation.wrappedValue.dismiss()
                    }
                    .transition(AnyTransition.opacity.combined(with: .move(edge: .trailing)))
                    .padding(.bottom)
                }
            }.padding(.horizontal)
            .onAppear {
                withAnimation(.spring(response: 0.5, dampingFraction: 0.9, blendDuration: 2)) {
                    receitas = listaDeReceitas.filter { query.isEmpty || $0.nome.uppercased().contains(query.uppercased())
                        
                    }
                    
                    searchBar.toggle()
                }
            }
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
