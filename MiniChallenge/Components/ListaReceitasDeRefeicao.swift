//
//  ListaReceitasDeRefeicao.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 27/06/21.
//

import SwiftUI

struct ListaReceitasDeRefeicao: View {
    var tipoRefeicao: TipoDeRefeicao
    @Binding var listaControle: [ControleQuantidade]
    @State var refeicaoViewActive = false

    var body: some View {
        VStack(alignment: .leading) {
            Divider()

            HStack {
                Text(tipoRefeicao.toString())
                    .fontWeight(.semibold)
                    .font(.title3)
                Spacer()
                Text("\(listaControle.count)/7")
                    .fontWeight(.semibold)
                    .foregroundColor(.accentColor)
                    .font(.subheadline)
            }.padding([.trailing, .bottom])

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(0..<listaControle.count) { i in
                        let receita = listaControle[i].receita
                        MinicardReceitaButton(imageName: receita.nomeImagem) {}
                            .padding(.trailing)
                    }

                    NavigationLink(
                        destination: PesquisaReceitaView(tipoRefeicao: tipoRefeicao, listaControle: $listaControle),
                        isActive: $refeicaoViewActive,
                        label: {})


                    AdicionaReceitasButton() {
                        refeicaoViewActive = true
                    }.padding(.trailing)
                }
            }
        }.padding([.leading, .bottom])
    }
}

struct ListaReceitasDeRefeicao_Previews: PreviewProvider {
    static let listaControle1 = [
        ControleQuantidade(quantidadeSemana: 1, quantidadePessoas: 2, receita: listaDeReceitas[0]),
        ControleQuantidade(quantidadeSemana: 1, quantidadePessoas: 2, receita: listaDeReceitas[1])
    ]

    static let listaControle2 = [
        ControleQuantidade(quantidadeSemana: 1, quantidadePessoas: 2, receita: listaDeReceitas[0]),
        ControleQuantidade(quantidadeSemana: 1, quantidadePessoas: 2, receita: listaDeReceitas[1]),
        ControleQuantidade(quantidadeSemana: 1, quantidadePessoas: 2, receita: listaDeReceitas[2]),
        ControleQuantidade(quantidadeSemana: 1, quantidadePessoas: 2, receita: listaDeReceitas[3])
    ]


    static var previews: some View {
        Group {
            ListaReceitasDeRefeicao(tipoRefeicao: .cafeDaManha, listaControle: .constant([]))
            ListaReceitasDeRefeicao(tipoRefeicao: .almoco, listaControle: .constant(listaControle1))
            ListaReceitasDeRefeicao(tipoRefeicao: .jantar, listaControle: .constant(listaControle2))
        }.previewLayout(.fixed(width: 375, height: 200))
    }
}
