//
//  PlanejamentoLista.swift
//  MiniChallenge
//
//  Created by Paulo Tadashi Tokikawa on 24/06/21.
//

import SwiftUI

struct PlanejamentoLista: View {    
    @State var listaDeReceitas = [
        ControleQuantidade(quantidadeSemana: 1, quantidadePessoas: 1, receita: Receita(
            id: 1, categoria: .refeicaoPrincipal, nivelDificuldade: .intermediario,
            nome: "Strogonoff", tempoPreparo: "30 min", ingredientes: [
                Ingrediente(quantidade: 3, nome: "cenouras", descricao: "grandes"),
                Ingrediente(quantidade: 1, nome: "cebola", descricao: "picada"),
                Ingrediente(quantidade: 3, nome: "tomates", descricao: "grandes"),
                Ingrediente(nome: "Sal", descricao: "grandes")
            ],
            modoPreparo: "Meu modo de preparo"), dataDePreparo: Date()),
        ControleQuantidade(quantidadeSemana: 1, quantidadePessoas: 1, receita: Receita(
                id: 2, categoria: .refeicaoPrincipal, nivelDificuldade: .iniciante,
                nome: "Abóbora assada", tempoPreparo: "25 min", ingredientes: [
                    Ingrediente(quantidade: 1, nome: "abóbora", descricao: "grandes")
                ],
                modoPreparo: "Meu modo de preparo 2"), dataDePreparo: Date()),
        ControleQuantidade(quantidadeSemana: 1, quantidadePessoas: 1, receita: Receita(
                id: 3, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
                nome: "Sanduiche", tempoPreparo: "3 min", ingredientes: [
                    Ingrediente(quantidade: 2, nome: "pães", descricao: "(fatias)")
                ],
                modoPreparo: "Meu modo de preparo 3"), dataDePreparo: Date()),
        ControleQuantidade(quantidadeSemana: 1, quantidadePessoas: 1, receita: Receita(
                id: 4, categoria: .cafeDaManha, nivelDificuldade: .iniciante,
                nome: "Torradas com ovo", tempoPreparo: "10 min", ingredientes: [
                    Ingrediente(quantidade: 2, nome: "ovos", descricao: "grandes")
                ],
                modoPreparo: "Meu modo de preparo 4"), dataDePreparo: Date())
    ];
    
    var body: some View {
        //NavigationView{
        let date = Date()
        let weekday = Calendar.current.component(.weekday, from: date)
        let day = Calendar.current.component(.day, from: date)
            VStack(alignment: .leading){
                Text("Semana - Almoço").font(.system(.largeTitle)).bold()
                List(){
                    ForEach(listaDeReceitas){ dia in
                        ListaReceitasParaOrganizar(receita: dia.receita, diaSemana: "S", data: 1)
                    }
                    .onMove(perform: move)
                    .padding(.vertical, -10)
                }
                .padding(.leading, -48)
            }
            .listStyle(InsetListStyle())
            .environment(\.editMode, .constant(.active))
            
        //}
    }
    
    func move(from source: IndexSet, to destination: Int) {
        listaDeReceitas.move(fromOffsets: source, toOffset: destination)
        for i in 0..<listaDeReceitas.count {
        }
    }
}


struct PlanejamentoLista_Previews: PreviewProvider {
    static var previews: some View {
        PlanejamentoLista()
    }
}
