//
//  MinicardReceita.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 23/06/21.
//

import SwiftUI

struct MinicardReceitaButton: View {
    var imageName: String
    var buttonAction: () -> Void
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                ZStack {
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 80)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
        }
    }
}

struct MinicardReceitaButton_Previews: PreviewProvider {
    static var previews: some View {
        MinicardReceitaButton(imageName: "torradas-com-ovo") {
            print("Run Action")
        }
    }
}
