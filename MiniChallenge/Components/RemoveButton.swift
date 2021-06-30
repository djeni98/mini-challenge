//
//  SwiftUIView.swift
//  MiniChallenge
//
//  Created by Eros Maurilio on 27/06/21.
//

import SwiftUI

struct RemoveButton: View {
    
    init() {
        UIView.appearance(whenContainedInInstancesOf: [UIAlertController.self]).tintColor = UIColor(Color("Laranja"))
    }
    
    @State private var mostrandoAlerta = false
    var ReceitaAtual = "Receita"
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .cornerRadius(20)
//                .frame(width: 350, height: 300)
                .foregroundColor(.black)
                .opacity(0.5)

            
            Button(action: {
                mostrandoAlerta.toggle()
                
                
            }) {
                Image(systemName: "minus.circle.fill")
                    .font(.title)
                    .foregroundColor(Color(.white))
                
            }
            .offset(x: -150, y: -125)
            
            .alert(isPresented: $mostrandoAlerta) {
                Alert(
                    title: Text(ReceitaAtual),
                    message: Text("O que deseja fazer com a receita?"),
                    primaryButton: .destructive(Text("Excluir"), action:  {
                        //Ação destrutiva aqui
                    }),
                    secondaryButton: .cancel(Text("Cancelar")))
            }
            .accentColor(.white)
        }
    }
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        RemoveButton()
    }
}
