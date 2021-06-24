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


struct ControleQuantidade {
    var quantidadeSemana: Int;
    var quantidadePessoas: Int;
    var receita: Receita;
}

struct CardapioDia {
    var diaDaSemana: DiaDaSemana;
    var cafeDaManha: ControleQuantidade;
    var almoco: ControleQuantidade;
    var jantar: ControleQuantidade;
    var lanches: [Receita];
}


var listaDeReceitas = [
    Receita(
        id: 1, categoria: .refeicaoPrincipal, nivelDificuldade: .intermediario,
        nome: "Strogonoff", tempoPreparo: "30 min", ingredientes: [
            Ingrediente(quantidade: 3, nome: "cenouras", descricao: "grandes")
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
