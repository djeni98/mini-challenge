//
//  Perfil.swift
//  MiniChallenge
//
//  Created by Eros Maurilio on 30/06/21.
//

import SwiftUI

struct Perfil: View {
    var body: some View {
        VStack {
            
            Button(action: {
                
            }, label: {
                Image("PerfilLarge")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
            })
            .padding(.top, 40)
            
            Text("Carla Lamenha Gil")
                .font(.title2)
                .bold()
                .padding()
            
            Spacer()

            
            Text("Ainda estamos trabalhando por aqui...")
                .font(.title)
                .bold()
                .foregroundColor(.accentColor)
                .padding(40)
                .padding(.bottom, 50)
            
            
            Spacer()
            
            
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarTitle("Seu Perfil")
    }
}

struct Perfil_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        Perfil()
            
        }
    }
}
