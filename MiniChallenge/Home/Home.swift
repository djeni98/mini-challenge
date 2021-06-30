//
//  Home.swift
//  MiniChallenge
//
//  Created by Maria Luiza Amaral on 28/06/21.
//

import SwiftUI
import Foundation

struct Home: View {
    var semanaPlanejada : Bool
    var noticias: [Noticia]
    
    var images = ["domingo", "segunda", "terca", "quarta", "quinta", "sexta", "sabado"]
    
    var diaDaSemana = [1,2,3,4,5,6,7]
    
    let dayWeek = Calendar.current.component(.weekday, from: Date())
    let tomorrow = Calendar.current.component(.day, from: Date().addingTimeInterval(86400))
    let dayYesterday = Calendar.current.component(.day, from: Date().addingTimeInterval(-86400))
    
    
    var timeDay = 86400
    var next = Calendar.current.component(.day, from: Date().addingTimeInterval(86400))

    @State var mostraInicioPlanejamento = false
    
    var body: some View {
        //var day = dayWeek
        
        ScrollView{
            VStack{
                HStack{
                    VStack(alignment:.leading ){
                        Text("Rotina Alimentar")
                            .font(.system(size:34, weight: .bold, design: .default))
                    }
                    Spacer()
                    VStack{
                        Image("perfil")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 45, height: 45)
                            .clipShape(Circle())
                    }
                }
                
                VStack(alignment: .center){
                    
                    if semanaPlanejada{
                        CardHome(semanaOrganizada: semanaPlanejada, img: "tomato")
                            .frame(height: 303, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        VStack{
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack{
                                    ForEach (images, id: \.self) { image in
                                        VStack(alignment: .leading){
                                            ItensCarrosselDias(img: image, date: Date())
                                        }.padding(.vertical, 30)
                                        
                                    }
                                }
                            }
                        }
                    }
                    else {
                        CardHome(semanaOrganizada: semanaPlanejada, img: "calendar")
                            .frame(height: 303, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .onTapGesture {
                                mostraInicioPlanejamento = true
                            }

                        NavigationLink(
                            destination: CardapioSemanaView(),
                            isActive: $mostraInicioPlanejamento,
                            label: {})
                    }
                }
                
                //Spacer()
                VStack(alignment:.leading){
                    Text("Dicas de nutricionistas")
                        .font(.title2)
                        .bold()
                        .padding(.vertical, 20)
                        .padding(.top,30)
                    ForEach (noticias) { noticia in
                        VStack{
                            if noticia.tipo == .nutriocional{
                                ItemNoticia(noticia: noticia)
                            }
                        }.padding(.bottom, 5)
                    }
                    
                    Divider()
                    Text("Sustentabilidade na alimentação")
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
                }
            }.padding()
        }
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
            Home(semanaPlanejada: false, noticias: listaDeNoticias)
                .navigationBarHidden(true)
        }
    }
}