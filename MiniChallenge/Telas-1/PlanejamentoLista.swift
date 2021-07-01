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
    @State var text: String = ""
    @Binding var editou:Bool
    
    @State var data = Date()
    
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
                data = controle.dataInicio
                switch refeicao {
                case .almoco:
                    text = "Almoco"
                    lista = controle.almoco
                case .jantar:
                    text = "jantar"
                    lista = controle.janta
                case .cafeDaManha:
                    text = "café"
                    lista = controle.cafeDaManha
                default:
                    text = "nada"
                    lista = []
                }
                for i in 0..<lista.count {
                    lista[i].dataDePreparo = data.addingTimeInterval(86400 * Double(i))
                }
            }
        )
        .navigationTitle("\(refeicao.toString())")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(
            trailing: Button("Confirmar") {
                switch refeicao {
                case .almoco:
                    text = "Almoco"
                    controle.almoco = lista
                case .jantar:
                    text = "jantar"
                    controle.janta = lista
                case .cafeDaManha:
                    text = "café"
                    controle.cafeDaManha = lista
                default:
                    text = "nada"
                    lista = []
                }
                editou = true
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
            PlanejamentoLista(refeicao: .almoco, editou: .constant(false)).environmentObject(ControleRefeicoesModel.criaTeste())
        }
    }
}
