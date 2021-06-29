//
//  MinicardReceita.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 23/06/21.
//

import SwiftUI

struct MinicardReceitaButton: View {
    var receita: Receita
    var estaEditando: Bool
    var removeAction: () -> Void

    init(receita: Receita, estaEditando: Bool, removeAction: @escaping () -> Void) {
        self.receita = receita
        self.estaEditando = estaEditando
        self.removeAction = removeAction

        UIView.appearance(whenContainedInInstancesOf: [UIAlertController.self]).tintColor = UIColor(Color("Laranja"))
    }

    @EnvironmentObject var controleReceitas: ControleQuantidadeReceitasModel
    @State private var mostraReceita = false
    @State private var mostraAlerta = false

    var imagem: String {
        guard let nomeImagem = receita.nomeImagem else {
            return "sem-imagem"
        }
        return nomeImagem
    }

    var body: some View {
        ZStack(alignment:.topTrailing) {
            Image(imagem)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .sheet(isPresented: $mostraReceita, content: {
                    ReceitaModalStack(
                        isPresented: $mostraReceita,
                        receita: receita,
                        dismissCallerView: {}
                    ).environmentObject(controleReceitas)
                })
                .onTapGesture {
                    if estaEditando { return }
                    mostraReceita = true
                }

            if (estaEditando) {
                fundoRemocaoView
                    .transition(.scale)
                    .zIndex(1.5)
            }
        }.alert(isPresented: $mostraAlerta) {
            Alert(
                title: Text("Deseja excluir esta refeição?"),
                message: Text("Você poderá adicioná-la novamente quando desejar!"),
                primaryButton: .destructive(Text("Excluir"), action: removeAction),
                secondaryButton: .cancel(Text("Cancelar")))
        }
    }

    var fundoRemocaoView: some View {
        ZStack(alignment:.topTrailing)  {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 80, height: 80)
                .foregroundColor(.black)
                .opacity(0.3)

            Image(systemName: "minus.circle.fill")
                .font(.title2)
                .foregroundColor(.white)
                .frame(width: 25, height: 25)
                .contentShape(Rectangle())
                .onTapGesture {
                    mostraAlerta = true
                }
        }
    }
}

struct MinicardReceitaButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MinicardReceitaButton(
                receita: listaDeReceitas[3], estaEditando: false,
                removeAction: { print("Remove receita") }
            )
            MinicardReceitaButton(
                receita: listaDeReceitas[3], estaEditando: true,
                removeAction: { print("Remove receita") }
            )
        }.previewLayout(.fixed(width: 100, height: 100))
        .environmentObject(ControleQuantidadeReceitasModel([
            ControleQuantidade(quantidadePessoas: 2, receita: listaDeReceitas[0])
        ]))
    }
}
