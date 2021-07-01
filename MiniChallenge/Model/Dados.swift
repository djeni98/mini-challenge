//
//  Dados.swift
//  MiniChallenge
//
//  Created by Paulo Tadashi Tokikawa on 30/06/21.
//

import Foundation

var listaTestePlanejamentoAlmoco = [
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
        id: 1, categoria: .refeicaoPrincipal, nivelDificuldade: .intermediario,
        nome: "Strogonoff", tempoPreparo: "30 min", ingredientes: [
            Ingrediente(quantidade: 3, nome: "cenouras", descricao: "grandes")
        ],
        modoPreparo: "Meu modo de preparo"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 2, categoria: .refeicaoPrincipal, nivelDificuldade: .iniciante,
            nome: "Strognoff Batata", tempoPreparo: "25 min", ingredientes: [
                Ingrediente(quantidade: 1, nome: "abóbora", descricao: "grandes")
            ],
            modoPreparo: "Meu modo de preparo 2"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 3, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
            nome: "Strogonoff grao de bico", tempoPreparo: "3 min", ingredientes: [
                Ingrediente(quantidade: 2, nome: "pães", descricao: "(fatias)")
            ],
            modoPreparo: "Meu modo de preparo 3"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 4, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
            nome: "Strogonoff de carne", tempoPreparo: "10 min", ingredientes: [
                Ingrediente(quantidade: 2, nome: "ovos", descricao: "grandes")
            ],
            modoPreparo: "Meu modo de preparo 4"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 5, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
            nome: "Strogonoff de Frango", tempoPreparo: "10 min", ingredientes: [
                Ingrediente(quantidade: 2, nome: "ovos", descricao: "grandes")
            ],
            modoPreparo: "Meu modo de preparo 4"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 6, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
            nome: "Strogonoff de abacaxi", tempoPreparo: "10 min", ingredientes: [
                Ingrediente(quantidade: 2, nome: "ovos", descricao: "grandes")
            ],
            modoPreparo: "Meu modo de preparo 4"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 7, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
            nome: "Strogonoff com Cachaça", tempoPreparo: "10 min", ingredientes: [
                Ingrediente(quantidade: 2, nome: "ovos", descricao: "grandes")
            ],
            modoPreparo: "Meu modo de preparo 4"), dataDePreparo: Date())
];
var listaTestePlanejamentoCafeDaManha = [
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
        id: 1, categoria: .refeicaoPrincipal, nivelDificuldade: .intermediario,
        nome: "Torrada", tempoPreparo: "30 min", ingredientes: [
            Ingrediente(quantidade: 3, nome: "cenouras", descricao: "grandes")
        ],
        modoPreparo: "Meu modo de preparo"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 2, categoria: .refeicaoPrincipal, nivelDificuldade: .iniciante,
            nome: "Torrada com Ovo", tempoPreparo: "25 min", ingredientes: [
                Ingrediente(quantidade: 1, nome: "abóbora", descricao: "grandes")
            ],
            modoPreparo: "Meu modo de preparo 2"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 3, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
            nome: "Torrada com Presunto", tempoPreparo: "3 min", ingredientes: [
                Ingrediente(quantidade: 2, nome: "pães", descricao: "(fatias)")
            ],
            modoPreparo: "Meu modo de preparo 3"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 4, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
            nome: "Torrada com Peito de Peru", tempoPreparo: "10 min", ingredientes: [
                Ingrediente(quantidade: 2, nome: "ovos", descricao: "grandes")
            ],
            modoPreparo: "Meu modo de preparo 4"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 5, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
            nome: "Torrada com Mortadela", tempoPreparo: "10 min", ingredientes: [
                Ingrediente(quantidade: 2, nome: "ovos", descricao: "grandes")
            ],
            modoPreparo: "Meu modo de preparo 4"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 6, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
            nome: "Torrada com Manteiga", tempoPreparo: "10 min", ingredientes: [
                Ingrediente(quantidade: 2, nome: "ovos", descricao: "grandes")
            ],
            modoPreparo: "Meu modo de preparo 4"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 7, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
            nome: "Torrada Torrada", tempoPreparo: "10 min", ingredientes: [
                Ingrediente(quantidade: 2, nome: "ovos", descricao: "grandes")
            ],
            modoPreparo: "Meu modo de preparo 4"), dataDePreparo: Date())
];

var listaTestePlanejamentoJantar = [
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
        id: 1, categoria: .refeicaoPrincipal, nivelDificuldade: .intermediario,
        nome: "Sopa de Abóbora", tempoPreparo: "30 min", ingredientes: [
            Ingrediente(quantidade: 3, nome: "cenouras", descricao: "grandes")
        ],
        modoPreparo: "Meu modo de preparo"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 2, categoria: .refeicaoPrincipal, nivelDificuldade: .iniciante,
            nome: "Sopa de Feijão", tempoPreparo: "25 min", ingredientes: [
                Ingrediente(quantidade: 1, nome: "abóbora", descricao: "grandes")
            ],
            modoPreparo: "Meu modo de preparo 2"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 3, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
            nome: "Sopa de Capeletti", tempoPreparo: "3 min", ingredientes: [
                Ingrediente(quantidade: 2, nome: "pães", descricao: "(fatias)")
            ],
            modoPreparo: "Meu modo de preparo 3"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 4, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
            nome: "Sopa de Cebola", tempoPreparo: "10 min", ingredientes: [
                Ingrediente(quantidade: 2, nome: "ovos", descricao: "grandes")
            ],
            modoPreparo: "Meu modo de preparo 4"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 5, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
            nome: "Sopa tipo Canja", tempoPreparo: "10 min", ingredientes: [
                Ingrediente(quantidade: 2, nome: "ovos", descricao: "grandes")
            ],
            modoPreparo: "Meu modo de preparo 4"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 6, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
            nome: "Sopa de Espinafre", tempoPreparo: "10 min", ingredientes: [
                Ingrediente(quantidade: 2, nome: "ovos", descricao: "grandes")
            ],
            modoPreparo: "Meu modo de preparo 4"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 7, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
            nome: "Sopa de Batata", tempoPreparo: "10 min", ingredientes: [
                Ingrediente(quantidade: 2, nome: "ovos", descricao: "grandes")
            ],
            modoPreparo: "Meu modo de preparo 4"), dataDePreparo: Date())
];
