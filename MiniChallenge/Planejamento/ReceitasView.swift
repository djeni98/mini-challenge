//
//  ReceitasView.swift
//  MiniChallenge
//
//  Created by Maria Luiza Amaral on 30/06/21.
//

import SwiftUI

struct ReceitasView: View {
    @Environment(\.presentationMode) var presentation
    
    @State var searchBar = false
    @State var receitas: [Receita] = []
    @State var query: String = ""
    @State var tiposReceita : TipoDeRefeicao = .todos
    
    func filterFunc(_ receita: Receita, tipoRefeicao: TipoDeRefeicao) -> Bool {
       
       let condicao = query.isEmpty || receita.nome.uppercased().contains(query.uppercased())
        if tipoRefeicao != .todos{
            return receita.categoria.match(tipoRefeicao) && condicao
        }else{
            return condicao
        }
    }
    
//    func filterTipo(_ receita: Receita) -> Bool {
//        tiposReceita.match(receita.categoria)
//
//    }
    
    var body: some View {
        ScrollView ( showsIndicators: false) {
            VStack{
                VStack{
                    Text("Conheça as receitas pensadas por profissionais e que estão disponíveis para a sua rotina alimentar!")
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                }
                VStack {
                    if searchBar {
                        SearchField(query: $query)
                            .padding(.top)
                    }
                    
                    Picker("Categoria", selection: $tiposReceita) {
                        Text("Todos")
                            .tag(TipoDeRefeicao.todos)
                        
                        Text("Café")
                            .tag(TipoDeRefeicao.cafeDaManha)
                        
                        Text("Principais")
                            .tag(TipoDeRefeicao.refeicaoPrincipal)
                        
                        Text("Lanches")
                            .tag(TipoDeRefeicao.lanche)
                        
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.vertical)

                    if receitas.isEmpty {
                        HStack {
                            Spacer()

                            Text("Carregando...")
                                .font(.title3)
                                .foregroundColor(.gray)
                                .padding(.top, 180)

                            Spacer()
                        }

                    } 
                    
                    ForEach(receitas.filter({
                        filterFunc($0, tipoRefeicao: tiposReceita)
                    })) { receita in
                        CardPrincipal(receita: receita)
                            .frame(width: 350, height: 300)
                            .shadow(radius: 10)
                            .padding(.bottom)

                    }
                }
            }
        }.padding(.horizontal)
        .onAppear {
            searchBar = true

            DispatchQueue.main.asyncAfter(deadline: .now()) {
                receitas = listaDeReceitasPronta
            }
        }
        .navigationTitle("Receitas")
        .navigationBarTitleDisplayMode(.large)
        
    }
    
}


struct Receitas_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ReceitasView()
        }
    }
}
