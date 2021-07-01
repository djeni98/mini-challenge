//
//  DescricaoIngredientesSubview.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 30/06/21.
//

import SwiftUI

struct DescricaoIngredientesSubview: View {
    var ingredientes: [Ingrediente]
    var body: some View {
        VStack(alignment: .leading) {
            Text("Ingredientes")
                .bold()
                .font(.title2)
                .padding(.bottom, 5)

            ForEach(ingredientes.indices) { i in
                let ingrediente = ingredientes[i]
                Text("→ \(ingrediente.toString())")
                    .padding(.leading, 5)
                    .padding(.bottom, 1)
            }
        }
    }
}

struct DescricaoIngredientesSubview_Previews: PreviewProvider {
    static var previews: some View {
        DescricaoIngredientesSubview(ingredientes: listaDeReceitas[0].ingredientes)
    }
}
