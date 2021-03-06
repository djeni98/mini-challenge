//
//  ListaReceitasDeRefeicao.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 27/06/21.
//

import SwiftUI

struct ListaReceitasDeRefeicao: View {
    var tipoRefeicao: TipoDeRefeicao
    var estaEditando: Bool
    @EnvironmentObject var controleReceitas: ControleQuantidadeReceitasModel
    var listaControle: [ControleQuantidade] { controleReceitas.lista }
    @State var refeicaoViewActive = false
    @State var estaAnimando = false
    @State var transicaoMove = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Divider()
            
            HStack {
                Text(tipoRefeicao.toString())
                    .fontWeight(.semibold)
                    .font(.title3)
                Spacer()
                Text(tipoRefeicao == .lanche ? "Livre" : "\(listaControle.count)/7")
                    .fontWeight(.semibold)
                    .foregroundColor(.accentColor)
                    .font(.subheadline)
            }
            .padding([.horizontal, .bottom])
            
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(listaControle) { item in
                        let receita = item.receita
                        let index = listaControle.firstIndex { $0.id == item.id }!
                        MinicardReceitaButton(
                            receita: receita, estaEditando: tipoRefeicao == .lanche ? true : estaEditando,
                            removeAction: {
                                withAnimation { () -> () in
                                    self.controleReceitas.lista.remove(at: index)
                                }
                            }
                        ).padding(.trailing)
                    }
                    
                    NavigationLink(
                        destination: {
                            VStack {
                                if tipoRefeicao == .lanche {
                                    PesquisaLanchesView(fechaView: true).environmentObject(controleReceitas)
                                } else{
                                    PesquisaReceitaView(tipoRefeicao: tipoRefeicao).environmentObject(controleReceitas)
                                }
                            }
                        }(),
                        isActive: $refeicaoViewActive,
                        label: {})
                    
                    AdicionaReceitasButton() {
                        refeicaoViewActive = true
                    }.padding(.trailing)
                }
            }
            .padding([.leading, .bottom])
            
        }
    }
}

struct ListaReceitasDeRefeicao_Previews: PreviewProvider {
    static let listaControle1 = [
        ControleQuantidade( quantidadePessoas: 2, receita: listaDeReceitas[0]),
        ControleQuantidade( quantidadePessoas: 2, receita: listaDeReceitas[1])
    ]
    
    static let listaControle2 = [
        ControleQuantidade(quantidadePessoas: 2, receita: listaDeReceitas[0]),
        ControleQuantidade(quantidadePessoas: 2, receita: listaDeReceitas[1]),
        ControleQuantidade(quantidadePessoas: 2, receita: listaDeReceitas[2]),
        ControleQuantidade(quantidadePessoas: 2, receita: listaDeReceitas[3])
    ]
    
    
    static var previews: some View {
        Group {
            ListaReceitasDeRefeicao(tipoRefeicao: .lanche, estaEditando: false)
            .environmentObject(ControleQuantidadeReceitasModel())

            ListaReceitasDeRefeicao(tipoRefeicao: .cafeDaManha, estaEditando: false)
                .environmentObject(ControleQuantidadeReceitasModel())

            ListaReceitasDeRefeicao(tipoRefeicao: .almoco, estaEditando: false)
                .environmentObject(ControleQuantidadeReceitasModel(listaControle1))
            
            ListaReceitasDeRefeicao(tipoRefeicao: .jantar, estaEditando: true)
                .environmentObject(ControleQuantidadeReceitasModel(listaControle2))
        }
        .previewLayout(.fixed(width: 375, height: 200))
        .preferredColorScheme(.dark)

    }
}
