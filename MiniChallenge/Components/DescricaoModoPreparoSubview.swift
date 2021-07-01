//
//  DescricaoModoPreparoSubview.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 30/06/21.
//

import SwiftUI

struct DescricaoModoPreparoSubview: View {
    var modoPreparo: String
    var body: some View {
        VStack(alignment: .leading) {
            Text("Modo de Preparo")
                .bold()
                .font(.title2)
                .padding(.bottom, 5)

            Text(modoPreparo)
        }
    }
}

struct DescricaoModoPreparoSubview_Previews: PreviewProvider {
    static var previews: some View {
        DescricaoModoPreparoSubview(modoPreparo: listaDeReceitas[0].modoPreparo)
    }
}
