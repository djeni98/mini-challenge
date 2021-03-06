//
//  Home.swift
//  MiniChallenge
//
//  Created by Maria Luiza Amaral on 28/06/21.
//

import SwiftUI
import Foundation

struct Home: View {
    var semanaPlanejada: Bool
    var noticias: [Noticia]
    var navegaParaPlanejamentoView: () -> Void
    
    var images = ["domingo", "segunda", "terca", "quarta", "quinta", "sexta", "sabado"]
    
    @State var perfilAberto = false
    
    let dayWeek = Calendar.current.component(.weekday, from: Date())
    let tomorrow = Calendar.current.component(.day, from: Date().addingTimeInterval(86400))
    let dayYesterday = Calendar.current.component(.day, from: Date().addingTimeInterval(-86400))
    
    
    var timeDay = 86400
    var next = Calendar.current.component(.day, from: Date().addingTimeInterval(86400))


    @State var mostraInicioPlanejamento = false
    @State var mostraCardapio = false
    @State var indiceCardapio = 0
    @State var indiceCardapioHoje: Int?

    @EnvironmentObject var cardapioSemana: CardapioSemanaModel
    
    var body: some View {
        //var day = dayWeek
        
        VStack {
            Rectangle()
                .foregroundColor(Color("backGround"))
                .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 50)
            
            ScrollView(showsIndicators: false) {
                VStack{
                    HStack{
                        VStack(alignment:.leading ){
                            Text("Rotina Alimentar")
                                .font(.system(size:34, weight: .bold, design: .default))
                        }
                        Spacer()
                                   
                        NavigationLink(
                            destination: Perfil(),
                            isActive: $perfilAberto,
                            label: { })
                        
                        
                        Button(action: {
                            perfilAberto = true
                            
                        }, label: {
                            Image("perfil")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 45, height: 45)
                                .clipShape(Circle())
                        })
                        
                    }
                    .padding(.top, 20)
                    .padding(.horizontal)
                        
                    VStack(alignment: .center){
                        
                        if semanaPlanejada {
                            if let indiceCardapioHoje = indiceCardapioHoje {
                                CardHome(semanaOrganizada: semanaPlanejada, img: "tomato")
                                    .frame(height: 303, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .onTapGesture {
                                        mostraCardapio = true
                                        indiceCardapio = indiceCardapioHoje
                                    }.padding(.horizontal)
                            } else {
                                CardHome(semanaOrganizada: semanaPlanejada, img: "tomato", data: cardapioSemana.dataInicio!)
                                    .frame(height: 303, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
                                            }
                                            .padding(.vertical, 30)
                                            .padding(.leading)
                                            
                                        }
                                    }.padding(.trailing)
                                }
                            }

                            NavigationLink(
                                destination: DetalhaDia(cardapio: cardapioSemana.cardapios[indiceCardapio]),
                                isActive: $mostraCardapio,
                                label: {})
                        }
                        else {
                            CardHome(semanaOrganizada: semanaPlanejada, img: "calendar")
                                .frame(height: 303, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .padding(.horizontal)
                                .padding(.bottom, 50)
                                .onTapGesture {
                                    mostraInicioPlanejamento = true

                                    navegaParaPlanejamentoView()
                                }

    //                        NavigationLink(
    //                            destination: CardapioSemanaView(funcoes: funcoes),
    //                            isActive: $mostraInicioPlanejamento,
    //                            label: {})
                        }
                    }
                    .padding(.top, 50)
                    
                    //Spacer()
                    VStack(alignment:.leading){
                        Text("Dicas de nutricionistas")
                            .font(.title2)
                            .bold()
                            .padding(.bottom, 20)
                        ForEach (noticias) { noticia in
                            VStack{
                                if noticia.tipo == .nutriocional{
                                    ItemNoticia(noticia: noticia)
                                }
                            }.padding(.bottom, 5)
                        }
                        
                        Divider()
                        Text("Sustentabilidade na alimenta????o")
                            .font(.title2)
                            .bold()
                            .padding(.vertical, 15)
                        ForEach (noticias) { noticia in
                            VStack{
                                if noticia.tipo == .sustentavel{
                                    ItemNoticia(noticia: noticia)
                                }
                            }
                        }
                        Divider()
                    }.padding(.horizontal)
                }.padding(.vertical)
                
            }

        }
        .onAppear {
            let hojeString = Date().toFormatDayMonth()
            let diasCardapioString = cardapioSemana.cardapios.map { $0.data.toFormatDayMonth() }
            indiceCardapioHoje = diasCardapioString.firstIndex(where: { $0 == hojeString })
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
    }
}


func day(data: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd"
    
    return formatter.string(from: data)
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Home(semanaPlanejada: true, noticias: listaDeNoticias) {}
                .preferredColorScheme(.light)
                .environmentObject(CardapioSemanaModel.criaTeste())
        }
    }
}
