//
//  ButtonPicker.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 25/06/21.
//

import SwiftUI

// Estilo Alarme
struct ButtonPicker: View {
    @Binding var value: Int

    var downLimit: Int?
    var upLimit: Int?

    let widthButton: CGFloat? = 50
    let heightButton: CGFloat? = 30
    var body: some View {
        HStack {
            Button(action: { value -= 1 }, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 4)
                        .frame(width: widthButton, height: heightButton)
                        .foregroundColor(Color(.systemGray5))

                    Image(systemName: "minus")
                }
            }).disabled(downLimit != nil && value <= downLimit!)


            TextField("", text: Binding(
                        get: { String(value) },
                        set: {
                            value = Int($0) ?? 0
                            if downLimit != nil && value <= downLimit! {
                                value = downLimit!
                            }
                            if upLimit != nil && value >= upLimit! {
                                value = upLimit!
                            }
                        }
            ))
            .keyboardType(.numberPad)
            .frame(width: 50)
            .multilineTextAlignment(.center)
            .foregroundColor(.accentColor)

            Button(action: { value += 1 }, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 4)
                        .frame(width: widthButton, height: heightButton)
                        .foregroundColor(Color(.systemGray5))

                    Image(systemName: "plus")
                }
            }).disabled(upLimit != nil && value >= upLimit!)

        }.font(.title3)
    }
}

struct ButtonPicker_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ButtonPicker(value: .constant(5))
            ButtonPicker(value: .constant(5), downLimit: 5, upLimit: 10)
            ButtonPicker(value: .constant(5), downLimit: 1, upLimit: 5)
        }.previewLayout(.fixed(width: 300, height: 100))
    }
}
