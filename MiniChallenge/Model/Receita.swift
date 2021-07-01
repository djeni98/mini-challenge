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

    var descricao: String?;

    func toString() -> String {
        if let descricao = self.descricao {
            return descricao
        }

        return nome
    }
}

enum TipoDeRefeicao: Int {
    case cafeDaManha = 1
    case refeicaoPrincipal; // almoço e janta
    case lanche;

    case almoco;
    case jantar;

    func toString() -> String {
        switch self {
            case TipoDeRefeicao.cafeDaManha:
                return "Café da Manhã"
            case TipoDeRefeicao.almoco:
                return "Almoço"
            case TipoDeRefeicao.refeicaoPrincipal:
                return "Refeição Principal"
            case TipoDeRefeicao.jantar:
                return "Jantar"
            case TipoDeRefeicao.lanche:
                return "Lanche"
        }
    }

    func isRefeicaoPrincipal() -> Bool {
        let refPrincipais: [TipoDeRefeicao] = [.refeicaoPrincipal, .almoco, .jantar]
        return refPrincipais.contains(self)
    }

    func match(_ other: TipoDeRefeicao) -> Bool {
        return self.isRefeicaoPrincipal() ? other.isRefeicaoPrincipal() : self == other
    }
}

enum Dificuldade {
    case iniciante, intermediario, avancado

    func toString() -> String {
        switch self {
            case Dificuldade.iniciante:
                return "Iniciante"
            case Dificuldade.intermediario:
                return "Intermediário"
            case Dificuldade.avancado:
                return "Avançado"
        }
    }
}


struct Receita: Identifiable {
    var id1 = UUID().uuidString
    var id: Int;
    var categoria: TipoDeRefeicao;
    var nivelDificuldade: Dificuldade;
    var nome: String;
    var tempoPreparo: String;
    var ingredientes: [Ingrediente];
    var modoPreparo: String;
    var nomeImagem: String?;
}

enum DiaDaSemana {
    case domingo, segunda, terca, quarta, quinta, sexta, sabado
}

struct CardapioDia {
    var diaDaSemana: DiaDaSemana;
    var cafeDaManha: Receita?;
    var almoco: Receita?;
    var jantar: Receita?;
    var lanches: [Receita] = []
    var data: Date = Date()
}

var listaDeReceitas = [
    Receita(
        id: 1, categoria: .refeicaoPrincipal, nivelDificuldade: .intermediario,
        nome: "Strogonoff", tempoPreparo: "30 min", ingredientes: [
            Ingrediente(quantidade: 3, nome: "cenouras", descricao: "grandes"),
            Ingrediente(quantidade: 1, nome: "cebola", descricao: "picada"),
            Ingrediente(quantidade: 3, nome: "tomates"),
            Ingrediente(nome: "Sal")
        ],
        modoPreparo: "Meu modo de preparo", nomeImagem: "Strogo"),
    Receita(
        id: 2, categoria: .refeicaoPrincipal, nivelDificuldade: .iniciante,
        nome: "Abóbora assada", tempoPreparo: "25 min", ingredientes: [
            Ingrediente(quantidade: 1, nome: "abóbora", descricao: "grandes")
        ],
        modoPreparo: "Meu modo de preparo 2"),
    Receita(
        id: 3, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
        nome: "Sanduiche", tempoPreparo: "3 min", ingredientes: [
            Ingrediente(quantidade: 2, nome: "pães", descricao: "(fatias)")
        ],
        modoPreparo: "Meu modo de preparo 3"),
    Receita(
        id: 4, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
        nome: "Torradas com ovo", tempoPreparo: "10 min", ingredientes: [
            Ingrediente(quantidade: 2, nome: "ovos", descricao: "grandes")
        ],
        modoPreparo: "Meu modo de preparo 4", nomeImagem: "torradas-com-ovo")
];
