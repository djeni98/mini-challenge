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
    var dismissCallerView: () -> Void
    
    @EnvironmentObject var controleReceitas: ControleQuantidadeReceitasModel
    var listaControle: [ControleQuantidade] {
        controleReceitas.lista
    }
    var listaComMesmaReceita: [ControleQuantidade] {
        controleReceitas.lista.filter({ $0.receita.id == receita.id })
    }
    
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
                        .padding(.bottom, 20)
                        
                        repeticaoSemanaView.padding(.bottom, 40)
                        
                        quantidadePessoasView.padding(.bottom, 40)
                        
                        DescricaoIngredientesSubview(ingredientes: receita.ingredientes)
                            .padding(.bottom, 40)

                        DescricaoModoPreparoSubview(modoPreparo: receita.modoPreparo)
                            .padding(.bottom, 40)
                        
                    }.padding(.horizontal)
                }   
            }
            .navigationTitle(receita.nome)
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(
                leading: Button("Cancelar") { isPresented = false },
                trailing: Button("Concluir") {
                    withAnimation(.spring()) {
                        isPresented = false
                        for _ in listaComMesmaReceita.count..<repeticaoSemana {
                            controleReceitas.lista.append(
                                ControleQuantidade( quantidadePessoas: quantidadePessoas, receita: receita)
                            )
                        }
                    }
                    
                    dismissCallerView()
                }
                .transition(.scale)
            )
        }.onAppear {
            self.repeticaoSemana = listaComMesmaReceita.count
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
                
                ButtonPicker(value: $repeticaoSemana, downLimit: 0, upLimit: 7 - listaControle.filter({ $0.receita.id != receita.id }).count)
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
}

struct ReceitaModalStack_Previews: PreviewProvider {
    static var previews: some View {
        ReceitaModalStack(
            isPresented: .constant(true),
            receita: listaDeReceitas[0]
        ) {}
        .environmentObject(ControleQuantidadeReceitasModel())
    }
}

