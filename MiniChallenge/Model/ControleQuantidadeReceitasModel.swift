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
