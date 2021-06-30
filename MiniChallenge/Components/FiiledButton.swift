//
//  FilledButton.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 23/06/21.
//

import SwiftUI

struct FilledButton: View {
    var label: String
    @Binding var desabilitado: Bool
    var buttonAction: () -> Void
    var body: some View {
        Button(action: buttonAction) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 60)
                Text(label)
                    .foregroundColor(.white)

            }
        }
        .padding(.horizontal)
        .disabled(desabilitado)
    }
}

struct FilledButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FilledButton(label: "Prosseguir", desabilitado: .constant(true)) {}
                .padding()
            FilledButton(label: "Adicionar", desabilitado: .constant(false)) {}
                .padding()
        }.previewLayout(.fixed(width: 400, height: 80))
        .preferredColorScheme(.dark)
    }
}
