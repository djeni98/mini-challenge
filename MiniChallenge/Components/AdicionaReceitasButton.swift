//
//  AdicionaReceitasButton.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 23/06/21.
//

import SwiftUI

struct AdicionaReceitasButton: View {
    var buttonAction: () -> Void
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(.systemGray6))
                    Image(systemName: "plus")
                        .font(.title)
                }
            }
        }
    }
}

struct AdicionaReceitasButton_Previews: PreviewProvider {
    static var previews: some View {
        AdicionaReceitasButton { print("Run Action") }
            .preferredColorScheme(.dark)
    }
}

