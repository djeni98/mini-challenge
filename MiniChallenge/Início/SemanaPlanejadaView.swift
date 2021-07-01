//
//  SemanaPlanejadaView.swift
//  MiniChallenge
//
//  Created by Djenifer Renata Pereira on 01/07/21.
//

import SwiftUI

struct SemanaPlanejadaView: View {
    var navegaParaAHome: () -> Void

    init(navegaParaAHome: @escaping () -> Void) {
        UIView.appearance(whenContainedInInstancesOf: [UIAlertController.self]).tintColor = UIColor(Color("Laranja"))
        self.navegaParaAHome = navegaParaAHome
    }

    @EnvironmentObject var cardapioSemana: CardapioSemanaModel
    var images = ["domingo", "segunda", "terca", "quarta", "quinta", "sexta", "sabado"]

    @State var mostraCardapio = false
    @State var indiceCardapio = 0
    @State var indiceCardapioHoje: Int?
    @State var mostrandoAlerta = false

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack(alignment: .leading) {
                Text("Sua semana já está planejada")
                Text("Dê uma olhada:")
                    .padding(.bottom)
            }.padding(.horizontal)
            .foregroundColor(.secondary)

            Spacer()

            if cardapioSemana.estaPlanejada {
                if let indiceCardapioHoje = indiceCardapioHoje {
                    CardHome(semanaOrganizada: true, img: "tomato")
                        .frame(height: 303, alignment: .center)
                        .onTapGesture {
                            mostraCardapio = true
                            indiceCardapio = indiceCardapioHoje
                        }.padding(.horizontal)
                } else {
                    CardHome(semanaOrganizada: true, img: "tomato", data: cardapioSemana.dataInicio ?? Date())
                        .frame(height: 303, alignment: .center)
                        .onTapGesture {
                            mostraCardapio = true
                            indiceCardapio = 0
                        }.padding(.horizontal)
                }

                VStack{
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 0){
                            ForEach (cardapioSemana.cardapios) { cardapio in
                                let image = images[cardapio.id]
                                VStack(alignment: .leading){
                                    ItensCarrosselDias(img: image, date: cardapio.data) {
                                        mostraCardapio = true
                                        indiceCardapio = cardapio.id
                                    }
                                }.padding(.vertical, 30)
                                .padding(.leading)

                            }
                        }.padding(.trailing)
                    }
                }

                Spacer()


                NavigationLink(
                    destination: DetalhaDia(cardapio: cardapioSemana.cardapios[indiceCardapio]),
                    isActive: $mostraCardapio,
                    label: {})
            }

        }.navigationTitle("Sua semana")
        .onAppear {
            let hojeString = Date().toFormatDayMonth()
            let diasCardapioString = cardapioSemana.cardapios.map { $0.data.toFormatDayMonth() }
            indiceCardapioHoje = diasCardapioString.firstIndex(where: { $0 == hojeString })
        }
        .toolbar(content: {
            Button("Apagar") { mostrandoAlerta = true }
        })
        .alert(isPresented: $mostrandoAlerta) {
            Alert(
                title: Text("Você quer apagar este planejamento?"),
                primaryButton: .destructive(Text("Apagar"), action: {
                    cardapioSemana.reset()
                    navegaParaAHome()
                }),
                secondaryButton: .cancel(Text("Cancelar")))
        }
    }
}

struct SemanaPlanejadaView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SemanaPlanejadaView() {}
                .environmentObject(CardapioSemanaModel.criaTeste())
        }
    }
}
