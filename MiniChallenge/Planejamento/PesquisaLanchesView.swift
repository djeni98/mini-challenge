//
//  PesquisaLanchesView.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 29/06/21.
//

import SwiftUI

struct PesquisaLanchesView: View {
    var fechaView: Bool

    @Environment(\.presentationMode) var presentation

    @State var pesquisa = ""

    @State var lanches: [Receita] = []
    @State var searchBar = false

    @EnvironmentObject var controleLanches: ControleQuantidadeReceitasModel
    var lanchesSelecionados: [ControleQuantidade] {
        controleLanches.lista
    }

    func filterFunc(_ receita: Receita) -> Bool {
        pesquisa.isEmpty || receita.nome.uppercased().contains(pesquisa.uppercased())
    }

    let selecaoTexto = "Selecione à vontade os lanches que você gosta de comer durante o dia"
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                if searchBar {
                    VStack(alignment: .leading) {
                        SearchField(query: $pesquisa)
                            .padding(.vertical, 5)

                        Text(selecaoTexto)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .padding(.bottom, 20)
                            .multilineTextAlignment(.leading)
                            .lineLimit(2)

                    }.padding(.horizontal)
                }

                if lanches.isEmpty {
                    HStack {
                        Spacer()
                        
                        Text("Carregando...")
                            .font(.title3)
                            .foregroundColor(.gray)
                            .padding(.top, 180)
                        
                        Spacer()
                    }
                    
                } else {
                    ForEach(lanches.filter(filterFunc)) { lanche in
                        VStack {
                            HStack {
                                Image(lanche.nomeImagem ?? "sem-imagem")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 60, height: 60)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                Text(lanche.nome)

                                Spacer()

                                if lanchesSelecionados.contains(where: { controle in
                                    controle.receita.id == lanche.id
                                }) {
                                    Image(systemName: "checkmark.square.fill")
                                        .foregroundColor(.accentColor)
                                        .padding(.trailing)
                                } else {
                                    Image(systemName: "square")
                                        .foregroundColor(.accentColor)
                                        .padding(.trailing)
                                }
                            }

                            Divider().padding(.leading, 65)
                        }.padding(.leading)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            if lanchesSelecionados.contains(where: { controle in
                                controle.receita.id == lanche.id
                            }) {
                                let index = lanchesSelecionados.firstIndex { $0.receita.id == lanche.id }!
                                controleLanches.lista.remove(at: index)
                            } else {
                                controleLanches.lista.append(ControleQuantidade(quantidadePessoas: 1, receita: lanche))
                            }
                        }
                    }
                }
                
            }
        }
        .navigationTitle("Lanches")
        .navigationBarTitleDisplayMode(.large)
        .navigationBarItems(
            leading: lanchesSelecionados.isEmpty ? AnyView(EmptyView()) : AnyView(botaoLimparTudo),
            trailing: lanchesSelecionados.isEmpty ? AnyView(EmptyView()) : AnyView(botaoConcluir)
        )
        .navigationBarBackButtonHidden(!lanchesSelecionados.isEmpty)
        .onAppear {
            searchBar = true
            // lanches = listaDeReceitasPronta.filter { $0.categoria == .lanche }
            DispatchQueue.main.asyncAfter(deadline: .now()) {
                lanches = listaDeReceitasPronta.filter { $0.categoria == .lanche }

            }
        }
    }

    var botaoLimparTudo: some View {
        Button(action: {
            controleLanches.lista = []
        }, label: {
            Text("Limpar tudo")
        }).font(.body)
    }

    var botaoConcluir: some View {
        Button(action: {
            if fechaView {
                self.presentation.wrappedValue.dismiss()
            }
        }, label: {
            Text("Concluir")
        }).font(.body)
    }

}


struct PesquisaLanchesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PesquisaLanchesView(fechaView: false)
                .environmentObject(ControleQuantidadeReceitasModel())
        }
    }
}
