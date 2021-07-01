//
//  CardExpandeModal.swift
//  MiniChallenge
//
//  Created by Eros Maurilio on 30/06/21.
//

import SwiftUI

struct CardExpandeModal: View {
    var receita: Receita
    @State var mostraModalStack = false

    var body: some View {
        VStack {
            CardPrincipal(receita: receita)
        }
        .contentShape(Rectangle())
        .cornerRadius(0)
        .sheet(isPresented: $mostraModalStack, content: { CardDetalhadoView(receita: receita) })
        .onTapGesture {
            mostraModalStack = true
        }
        
    }
}

struct CardExpandeModal_Previews: PreviewProvider {
    static var previews: some View {
        CardExpandeModal(receita: listaDeReceitas[0])
    }
}
