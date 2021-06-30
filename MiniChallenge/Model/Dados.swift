//
//  Dados.swift
//  MiniChallenge
//
//  Created by Paulo Tadashi Tokikawa on 30/06/21.
//

import Foundation

var listaTestePlanejamento = [
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
        id: 1, categoria: .refeicaoPrincipal, nivelDificuldade: .intermediario,
        nome: "Strogonoff", tempoPreparo: "30 min", ingredientes: [
            Ingrediente(quantidade: 3, nome: "cenouras", descricao: "grandes"),
            Ingrediente(quantidade: 1, nome: "cebola", descricao: "picada"),
            Ingrediente(quantidade: 3, nome: "tomates", descricao: "grandes"),
            Ingrediente(nome: "Sal", descricao: "grandes")
        ],
        modoPreparo: "Meu modo de preparo"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 2, categoria: .refeicaoPrincipal, nivelDificuldade: .iniciante,
            nome: "Abóbora assada", tempoPreparo: "25 min", ingredientes: [
                Ingrediente(quantidade: 1, nome: "abóbora", descricao: "grandes")
            ],
            modoPreparo: "Meu modo de preparo 2"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 3, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
            nome: "Sanduiche", tempoPreparo: "3 min", ingredientes: [
                Ingrediente(quantidade: 2, nome: "pães", descricao: "(fatias)")
            ],
            modoPreparo: "Meu modo de preparo 3"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 4, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
            nome: "Torradas com ovo", tempoPreparo: "10 min", ingredientes: [
                Ingrediente(quantidade: 2, nome: "ovos", descricao: "grandes")
            ],
            modoPreparo: "Meu modo de preparo 4"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 5, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
            nome: "Batata com cebolinha", tempoPreparo: "10 min", ingredientes: [
                Ingrediente(quantidade: 2, nome: "ovos", descricao: "grandes")
            ],
            modoPreparo: "Meu modo de preparo 4"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 6, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
            nome: "Salada de batata", tempoPreparo: "10 min", ingredientes: [
                Ingrediente(quantidade: 2, nome: "ovos", descricao: "grandes")
            ],
            modoPreparo: "Meu modo de preparo 4"), dataDePreparo: Date()),
    ControleQuantidade(quantidadePessoas: 1, receita: Receita(
            id: 7, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
            nome: "Cozido de batata", tempoPreparo: "10 min", ingredientes: [
                Ingrediente(quantidade: 2, nome: "ovos", descricao: "grandes")
            ],
            modoPreparo: "Meu modo de preparo 4"), dataDePreparo: Date())
];

