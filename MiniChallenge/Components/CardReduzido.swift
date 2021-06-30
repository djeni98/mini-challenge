//
//  CardReduzido.swift
//  MiniChallenge
//
//  Created by Eros Maurilio on 24/06/21.
//

import SwiftUI

struct CardReduzido: View {
    var receita: Receita
    @EnvironmentObject var controleReceitas: ControleQuantidadeReceitasModel
    var listaControle: [ControleQuantidade] { controleReceitas.lista }
    var dismissCallerView: () -> Void

    var imagem: String {
        guard let nomeImagem = receita.nomeImagem else {
            return "sem-imagem"
        }
        return nomeImagem
    }
    var nome: String { receita.nome }
    var nivel: String { receita.nivelDificuldade.toString() }
    var tempoPreparo: String { receita.tempoPreparo }

    @State var mostraReceita = false

    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                Rectangle()
                    .foregroundColor(Color("LightDarkBg"))
                
                Image(imagem)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 150, alignment: .center)
                    .clipped()
                    .padding(.bottom, 110)
                

                VStack(alignment: .leading, spacing: 4) {
                    Text(nome)
                        .font(.title3)
                        .bold()

                    HStack {
                        Text(nivel)
                        Spacer()
                        Image(systemName: "clock")
                        Text(tempoPreparo)
                    }
                    .font(.caption)
                    .foregroundColor(.accentColor)
                    Spacer()
                }
                .padding(.top, 170)
                .padding(.horizontal, 25)
            }
            .frame(height: 200, alignment: .leading)
            .cornerRadius(20)
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.2), radius: 20)
            .sheet(isPresented: $mostraReceita, content: {
                ReceitaModalStack(
                    isPresented: $mostraReceita,
                    receita: receita,
                    dismissCallerView: dismissCallerView
                ).environmentObject(controleReceitas)
            })
            .contentShape(Rectangle())
            .onTapGesture {
                mostraReceita = true
            }
        }
    }
}

struct CardReduzido_Previews: PreviewProvider {
    static var previews: some View {
        CardReduzido(receita: listaDeReceitas[0]) {}
            .preferredColorScheme(.dark)
            .padding(20)
            .previewLayout(.fixed(width: 375, height: 250))
    }
}
