//
//  ReceitaModalStack.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 24/06/21.
//

import SwiftUI

struct ReceitaModalStack: View {
    @Binding var isPresented: Bool
    var receita: Receita
    @Binding var listaControle: [ControleQuantidade]
    var dismissCallerView: () -> Void

    var nivel: String { receita.nivelDificuldade.toString() }
    var tempoPreparo: String { receita.tempoPreparo }
    var imagem: String {
        guard let nomeImagem = receita.nomeImagem else {
            return "sem-imagem"
        }
        return nomeImagem
    }

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Image(imagem)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 200)
                        .clipped()

                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: "clock")
                            Text("\(tempoPreparo) - \(nivel)")
                        }
                        .font(.caption)
                        .foregroundColor(Color(.systemGray))
                        .padding(.vertical, 5)

                        repeticaoSemanaView.padding(.bottom)

                        quantidadePessoasView.padding(.bottom)

                        ingredientesView.padding(.bottom)

                        modoDePreparoView.padding(.bottom)

                    }.padding(.horizontal)
                }

            }
            .navigationTitle(receita.nome)
            .navigationBarItems(
                leading: Button("Cancelar") { isPresented = false },
                trailing: Button("Concluir") {
                    isPresented = false
                    for _ in 0..<repeticaoSemana {
                        listaControle.append(ControleQuantidade(quantidadeSemana: repeticaoSemana, quantidadePessoas: quantidadePessoas, receita: receita))
                    }

                    dismissCallerView()
                })
        }
    }

    @State var repeticaoSemana = 0
    var repeticaoSemanaView: some View {
        VStack(alignment: .leading) {
            Text("Repetição na semana")
                .bold()
                .font(.title2)

            HStack {
                if repeticaoSemana == 0 {
                    Text("Não selecionado")
                        .foregroundColor(.secondary)
                } else {
                    Text("\(repeticaoSemana) dia(s)")
                }

                Spacer()

                ButtonPicker(value: $repeticaoSemana, downLimit: 0, upLimit: 7 - listaControle.count)
            }
        }
    }

    @State var quantidadePessoas = 1
    var quantidadePessoasView: some View {
        VStack(alignment: .leading) {
            Text("Quantidade de Pessoas")
                .bold()
                .font(.title2)

            HStack {
                Text(quantidadePessoas == 1 ? "1 pessoa" : "\(quantidadePessoas) pessoas")

                Spacer()

                ButtonPicker(value: $quantidadePessoas, downLimit: 1, upLimit: 100)
            }
        }
    }

    var ingredientesView: some View {
        VStack(alignment: .leading) {
            Text("Ingredientes")
                .bold()
                .font(.title2)
                .padding(.bottom, 5)

            ForEach(receita.ingredientes.indices) { i in
                let ingrediente = receita.ingredientes[i]
                Text("→ \(ingrediente.toString())")
                    .padding(.leading, 5)
                    .padding(.bottom, 1)
            }

        }
    }

    var modoDePreparoView: some View {
        VStack(alignment: .leading) {
            Text("Modo de Preparo")
                .bold()
                .font(.title2)
                .padding(.bottom, 5)

            Text(receita.modoPreparo)

        }
    }
}

struct ReceitaModalStack_Previews: PreviewProvider {
    static var previews: some View {
        ReceitaModalStack(
            isPresented: .constant(true),
            receita: listaDeReceitas[0],
            listaControle: .constant([])
        ) {}
    }
}

