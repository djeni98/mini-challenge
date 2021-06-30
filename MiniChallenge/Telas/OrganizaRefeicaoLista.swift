//
//  OrganizaRefeicaoLista.swift
//  MiniChallenge
//
//  Created by Paulo Tadashi Tokikawa on 30/06/21.
//

import SwiftUI

struct OrganizaRefeicaoLista: View {
    @EnvironmentObject var controle: ControleRefeicoesModel
    
    
    
    var body: some View {
        VStack{
            NavigationLink(
                destination: PlanejamentoLista(refeicao: .jantar).environmentObject(controle),
                label: {
                    Text("Vai para lista")
                })
            ForEach(controle.janta){ r in
                Text(r.receita.nome)
            }
            
//            NavigationLink(
//                destination: PlanejamentoLista(refeicao: .almoco).environmentObject(almoco),
//                label: {
//                    Text("Vai para lista")
//                })
//
//            NavigationLink(
//                destination: PlanejamentoLista(refeicao: .cafeDaManha).environmentObject(cafe),
//                label: {
//                    Text("Vai para lista")
//                })
        }
    }
}

struct OrganizaRefeicaoLista_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView{            OrganizaRefeicaoLista().environmentObject(ControleRefeicoesModel.criaTeste())
        }
    }
}
