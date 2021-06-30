//
//  PlanejamentoLista.swift
//  MiniChallenge
//
//  Created by Paulo Tadashi Tokikawa on 24/06/21.
//

import SwiftUI

struct PlanejamentoLista: View {
    var refeicao: TipoDeRefeicao
    @Environment(\.presentationMode) var presentation
    @EnvironmentObject var controle: ControleRefeicoesModel
    @State var lista: [ControleQuantidade] = []
    
    let data = Date()
    
    var body: some View {
        VStack(alignment: .leading){
            List(){
                ForEach(lista){ receita in
                    let weekday = Calendar.current.component(.weekday, from: receita.dataDePreparo)
                    let day = Calendar.current.component(.day, from: receita.dataDePreparo)
                    ListaReceitasParaOrganizar(receita: receita.receita, diaSemana: letraDaSemana(weekday), data: day)
                }
                .onMove(perform: move)
            }
            .padding(.leading, -48)
        }
        .listStyle(InsetListStyle())
        .environment(\.editMode, .constant(.active))
        .onAppear(
            perform: {
                lista = controle.janta
                for i in 0..<lista.count {
                    lista[i].dataDePreparo = data.addingTimeInterval(86400 * Double(i))
                }
            }
        )
        .navigationTitle("Semana - \(refeicao.toString())")
        .navigationBarItems(
            trailing: Button("Confirmar") {
                controle.janta = lista
                self.presentation.wrappedValue.dismiss()
            }
            .transition(.scale)
        )
    }
        
    func move(from source: IndexSet, to destination: Int) {
        lista.move(fromOffsets: source, toOffset: destination)
        for i in 0..<lista.count {
            lista[i].dataDePreparo = data.addingTimeInterval(86400 * Double(i))
        }
    }
    
    func letraDaSemana(_ numero: Int) -> String {
        switch numero {
        case 1:
            return "D"
        case 2:
            return "S"
        case 3:
            return "T"
        case 4:
            return "Q"
        case 5:
            return "Q"
        case 6:
            return "S"
        case 7:
            return "S"
        default:
            return ""
        }
    }

}


struct PlanejamentoLista_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            PlanejamentoLista(refeicao: .almoco)
        }
    }
}
