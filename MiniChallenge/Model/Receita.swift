//
//  Receita.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 22/06/21.
//

import Foundation

struct Ingrediente {
    var quantidade: Int?;
    var nome: String;

    var descricao: String;
}

enum TipoDeRefeicao {
    case cafeDaManha;
    case refeicaoPrincipal; // almoço e janta
    case lanche;
}

enum Dificuldade {
    case iniciante, intermediario, avancado
}

struct Receita: Identifiable{
    var id: Int
    var categoria: TipoDeRefeicao;
    var nivelDificuldade: Dificuldade;
    var nome: String;
    var tempoPreparo: String;
    var ingredientes: [Ingrediente];
    var modoPreparo: String;
}

enum DiaDaSemana {
    case domingo, segunda, terca, quarta, quinta, sexta, sabado
}


struct ControleQuantidade: Identifiable {
    var id =  UUID()
    var quantidadeSemana: Int;
    var quantidadePessoas: Int;
    var receita: Receita;
    var dataDePreparo: Date
}

struct CardapioDia {
    var diaDaSemana: DiaDaSemana;
    var cafeDaManha: ControleQuantidade;
    var almoco: ControleQuantidade;
    var jantar: ControleQuantidade;
    var lanches: [Receita];
}


