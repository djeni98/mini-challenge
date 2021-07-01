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
    @State var estaRodando = false
    
    
    func filterFunc(_ receita: Receita) -> Bool {
        query.isEmpty || receita.nome.uppercased().contains(query.uppercased())
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                SearchField(query: $query)
                    .padding(.vertical)
                
                if receitas.isEmpty {
                    Text("Carregando...")
                        .font(.title3)
                        .foregroundColor(.gray)
                        .padding(.top, 200)
                    
                } else {
                    ForEach(receitas.filter(filterFunc)) { receita in
                        CardReduzido(receita: receita) {
                            self.presentation.wrappedValue.dismiss()
                        }
                        .padding(.bottom)
                    }
                }
                
            }.padding(.horizontal)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now()) {
                    receitas = listaDeReceitasPronta.filter { $0.categoria.match(tipoRefeicao) }
                    
                }
            }
            .navigationTitle(tipoRefeicao.toString())
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct PesquisaReceitaView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PesquisaReceitaView(tipoRefeicao: .almoco)
        }
    }
}
