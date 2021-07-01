//
//  CardapioSemanaModel.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 01/07/21.
//

import Foundation


enum DiaDaSemana {
    case domingo, segunda, terca, quarta, quinta, sexta, sabado
}


struct CardapioDia: Identifiable {
    var id: Int
    var diaDaSemana: DiaDaSemana;
    var cafeDaManha: Receita?;
    var almoco: Receita?;
    var jantar: Receita?;
    var lanches: [Receita] = []
    var data: Date = Date()
}

class CardapioSemanaModel: ObservableObject {
    @Published var dataInicio: Date?
    @Published var cardapios: [CardapioDia] = []
    @Published var estaPlanejada = false

    func update(cafe: [ControleQuantidade], almoco: [ControleQuantidade], janta: [ControleQuantidade], lanches: [ControleQuantidade]) {
        dataInicio = cafe[0].dataDePreparo
        estaPlanejada = true
        let lanchesReceitas = lanches.map { $0.receita }

        cardapios = []
        for i in 0..<7 {
            let cardapio = CardapioDia(
                id: i,
                diaDaSemana: .domingo,
                cafeDaManha: cafe[i].receita,
                almoco: almoco[i].receita,
                jantar: janta[i].receita,
                lanches: lanchesReceitas,
                data: cafe[i].dataDePreparo
            )

            cardapios.append(cardapio)
        }
    }

    func reset() {
        dataInicio = nil
        cardapios = []
        estaPlanejada = false
    }

    static func criaTeste() -> CardapioSemanaModel {
        let cardapio = CardapioSemanaModel()
        cardapio.estaPlanejada = true
        let data = Date()
        cardapio.dataInicio = data

        for i in 0..<7 {
            let dia = CardapioDia(
                id: i,
                diaDaSemana: .domingo,
                cafeDaManha: listaDeReceitasPronta[i],
                almoco: listaDeReceitasPronta[i],
                jantar: listaDeReceitasPronta[i],
                lanches: [listaDeReceitasPronta[19], listaDeReceitasPronta[20]],
                data: data.addingTimeInterval(86400 * Double(i))
            )

            cardapio.cardapios.append(dia)
        }

        return cardapio
    }
}
