//
//  PlanejamentoLista.swift
//  MiniChallenge
//
//  Created by Paulo Tadashi Tokikawa on 24/06/21.
//

import SwiftUI

struct PlanejamentoLista: View {
    struct ex: Identifiable {
        let id = UUID()
        var dia: Int
        var sem: String
        var descricao: String
        var tDP: Int
    }
    @State var testArray = [
        ex(dia: 1, sem: "S", descricao: "Receita balala", tDP: 12),
        ex(dia: 2, sem: "T", descricao: "Receita falala", tDP: 20),
        ex(dia: 3, sem: "Q", descricao: "Receita tatata", tDP: 30),
        ex(dia: 4, sem: "Q", descricao: "Receita lplplp", tDP: 40),
        ex(dia: 5, sem: "S", descricao: "Receita asasas", tDP: 23),
        ex(dia: 6, sem: "S", descricao: "Receita rsrsrs", tDP: 53),
        ex(dia: 7, sem: "D", descricao: "Receita wewewe", tDP: 16)
    ]
    var body: some View {
        //NavigationView{
            VStack(alignment: .leading){
                Text("Semana - Almoço").font(.system(.largeTitle)).bold()
                List(){
                    ForEach(testArray){ element in
                        HStack(spacing:0){
                            VStack(){
                                Text(element.sem)
                                Text(String(element.dia))
                            }
                                .padding(.trailing)
                            Text(element.descricao)

                        }
                    }
                    .onMove(perform: move)
                    
                }
                .padding(.leading, -48)
            }
            .listStyle(InsetListStyle())
            .environment(\.editMode, .constant(.active))
            
        //}
    }
    
    func move(from source: IndexSet, to destination: Int) {
        testArray.move(fromOffsets: source, toOffset: destination)
        for i in 0..<testArray.count {
            testArray[i].dia = i+1
        }
    }
}


struct PlanejamentoLista_Previews: PreviewProvider {
    static var previews: some View {
        PlanejamentoLista()
    }
}
