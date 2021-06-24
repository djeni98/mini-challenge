//
//  SearchField.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 23/06/21.
//

import SwiftUI

struct SearchField: View {
    @Binding var query: String;
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color(.systemGray6))
                .frame(height: 36)

            HStack {
                Image(systemName: "magnifyingglass")
                    .frame(width: 24, height: 24)

                TextField("Pesquise", text: $query)
                    .foregroundColor(.primary)

                Button(action: {
                    self.query = ""
                }) {
                    Image(systemName: "xmark.circle.fill").opacity(query.isEmpty ? 0 : 1)
                }
            }.padding(.horizontal, 4)
            .foregroundColor(.secondary)
        }

        // TODO: Implementar botão "Cancelar" com uma animação decente
        // https://www.appcoda.com/swiftui-search-bar/
    }
}

struct SearchField_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SearchField(query: .constant(""))
                .padding()

            SearchField(query: .constant("Ovo"))
                .padding()
        }.previewLayout(.fixed(width: 400, height: 70))
    }
}
