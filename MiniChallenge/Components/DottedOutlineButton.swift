//
//  DottedOutlineButton.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 24/06/21.
//

import SwiftUI

struct DottedOutlineButton: View {
    var label: String
    var buttonAction: () -> Void
    var body: some View {
        Button(action: buttonAction) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [2]))
                    .frame(height: 60)
                Text(label)
                    .fontWeight(.medium)
            }
        }
    }
}

struct DottedOutlineButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DottedOutlineButton(label: "+ Adicionar Refeição") {}
                .padding()
            DottedOutlineButton(label: "Adicionar lanche") {}
                .padding()
        }.previewLayout(.fixed(width: 400, height: 80))
    }
}
