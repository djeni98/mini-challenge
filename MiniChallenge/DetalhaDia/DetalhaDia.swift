//
//  DetalhaDia.swift
//  MiniChallenge
//
//  Created by Eros Maurilio on 30/06/21.
//
//arrumar paddi

import SwiftUI

struct DetalhaDia: View {
    var diaDaSemana = "Quinta-Feira"
    @State var cardapio: CardapioDia
    
    @State var estaRemovendo = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                criaCards(cardapio.cafeDaManha, tipoRefeicao: .cafeDaManha)
                criaCards(cardapio.almoco, tipoRefeicao: .almoco)
                criaCards(cardapio.jantar, tipoRefeicao: .jantar)
                
                CardLanche()
                    .frame(width: 350, height: 300)
                
                
            }
            .padding(.top, 40)
            .padding(.horizontal, 50)
        }
        .navigationTitle(diaDaSemana)
//        .navigationBarItems(trailing: Button(action: { estaRemovendo.toggle() }) { Image(systemName: "slider.horizontal.3").font(.title2)})
    }
    
    func criaCards(_ receita: Receita?, tipoRefeicao: TipoDeRefeicao) -> some View {
        if let receita = receita {
            return AnyView(
                ZStack {
                    CardExpandeModal(receita: receita)
                        .frame(width: 350, height: 300)
                        .shadow(radius: 10)
                    
                    if estaRemovendo {
                        RemoveButton() {
                            if tipoRefeicao == .cafeDaManha {
                                cardapio.cafeDaManha = nil
                            } else if tipoRefeicao == .almoco {
                                cardapio.almoco = nil
                                
                            } else if tipoRefeicao == .jantar {
                                cardapio.jantar = nil
                            }
                        }
                        .zIndex(1.5)
                    }
                }
            )
            
        } else {
            return AnyView(DottedOutlineButton(label: "Adicionar \(tipoRefeicao.toString())") {
                //Action
            })
            
        }
        
    }
    
}

struct DetalhaDia_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetalhaDia(cardapio: CardapioDia(id: 1, diaDaSemana: .quinta, cafeDaManha: listaDeReceitasPronta[1],almoco: listaDeReceitasPronta[0], jantar: listaDeReceitasPronta[5]))
        }
    }
}
