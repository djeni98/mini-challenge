//
//  ListaMercado.swift
//  MiniChallenge
//
//  Created by Eros Maurilio on 30/06/21.
//

import SwiftUI

struct ListaMercado: View {
    let gradiente = Gradient(colors: [Color("LaranjaClaro"), Color("LaranjaSingle")])
    
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 10){
                Spacer()
                
                Text("Lista de mercado")
                    .font(.caption2)
                    .fontWeight(.semibold)
                
                Text("Uma nova funcionalidade está saindo do forno!")
                    .font(.title2)
                    .bold()
                    .padding(.bottom, 30)
                
                Text("Em breve você poderá experimentar esse novo pedaço do Mimo, mais um auxílio no seu planejamento semanal.")
                    .font(.subheadline)
                
            }
            .foregroundColor(Color("LightDarkBg"))
            .padding(.horizontal, 20)
            .padding(.bottom, 190)
            .navigationTitle("Sua lista de mercado")
        }
        .frame(maxWidth: UIScreen.main.bounds.width,maxHeight: UIScreen.main.bounds.height)
        .background(
            Image("ListaImagem")
                .resizable()
                .scaledToFit()
                .offset(y: 50)
            
        )
        .background(Color("LightDarkBg")
                        .ignoresSafeArea())
        .edgesIgnoringSafeArea(.all)
    }
}

struct ListaMercado_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListaMercado()
                .preferredColorScheme(.light)
        }
        
        
    }
}
