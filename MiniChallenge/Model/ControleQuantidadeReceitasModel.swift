//
//  ControleQuantidadeReceitasModel.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 27/06/21.
//

import SwiftUI

struct ControleQuantidade: Identifiable {
    var id = UUID()
    var quantidadePessoas: Int
    var receita: Receita
    var dataDePreparo: Date = Date()
}

class ControleQuantidadeReceitasModel: ObservableObject {
    @Published var lista: [ControleQuantidade]
    
    init(_ lista: [ControleQuantidade] = []) {
        self.lista = lista
    }
}

class ControleRefeicoesModel: ObservableObject{
    @Published var cafeDaManha: [ControleQuantidade] = []
    @Published var almoco: [ControleQuantidade] = []
    @Published var janta: [ControleQuantidade] = []
    
    static func criaTeste() -> ControleRefeicoesModel{
        let testeControle = ControleRefeicoesModel()
        testeControle.almoco = listaTestePlanejamentoAlmoco
        testeControle.janta = listaTestePlanejamentoJantar
        testeControle.cafeDaManha = listaTestePlanejamentoCafeDaManha
        return testeControle
    }
}
