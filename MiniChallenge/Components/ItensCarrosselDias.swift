//
//  ItensCarrosselDias.swift
//  MiniChallenge
//
//  Created by Maria Luiza Amaral on 25/06/21.
//

import SwiftUI

struct ItensCarrosselDias: View {
    var img: String
    var date: Date
    
    let today = Date()
    let tomorrow = Date().addingTimeInterval(86400)
    let yesterday = Date().addingTimeInterval(-86400)
    
    let dayToday = Calendar.current.component(.day, from: Date())
    let dayTomorrow = Calendar.current.component(.day, from: Date().addingTimeInterval(86400))
    let dayYesterday = Calendar.current.component(.day, from: Date().addingTimeInterval(-86400))
    
    @State var day = Date()
    
    var body: some View {
        
//        let day = Calendar.current.component(.day, from: data)
//        let weekDay = Calendar.current.component(.weekday, from: data)
        
        //        let dateFormatter = DateFormatter()
        //        dateFormatter.dateFormat = "dd/MM"
        
        
        HStack{
            Button(action: {
                
            }){
                
                VStack(alignment:.leading){
                    Image(img)
                        .resizable()
                        .frame(width: 50, height: 60)
                        .aspectRatio(contentMode: .fill)
                    
                }
                VStack(alignment:.leading){
                    weekDayText()
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    HStack{
                        VStack{
                            switch Calendar.current.component(.day, from: date) {
                            case dayToday:
                                Text("Hoje")
                                    .font(.system(size:12, weight: .medium, design: .default))
                            case dayTomorrow:
                                Text("Amanhã")
                                    .font(.system(size:12, weight: .medium, design: .default))
                            case dayYesterday:
                                Text("Ontem")
                                    .font(.system(size:12, weight: .medium, design: .default))
                            default:
                                Image(systemName: "calendar")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.accentColor)
                                    .frame(width: 18, height: 15, alignment: .leading)
                            }
                    
                        }
                        
                        VStack{
                            Text("•")
                                .foregroundColor(.accentColor)
                                .font(.system(size:14, weight: .medium, design: .default))
                        }
                        VStack{
                            dataText()
                                .foregroundColor(.accentColor)
                                .font(.system(size:12, weight: .medium, design: .default))
                        }
                    }.padding(0.5)
                }
            }.frame(width: 180, height: 60, alignment: .leading)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color(.systemGray4),radius: 18, x: 0, y: 4)
        }
    }
    
    func dataText() -> some View {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM"
        
        return Text(formatter.string(from: date))
    }
    
    func weekDayText() -> some View {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "pt")
        formatter.dateFormat = "EEEE"
        
        let weekDayFormat = formatter.string(from: date).capitalized
        
        return Text(weekDayFormat.components(separatedBy: "-")[0])
    }
    
    
    func dataMostrar() -> some View{
        return Text("")
    }
}

struct ItensCarrosselDias_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ItensCarrosselDias(img: "sexta", date: Date())
            ItensCarrosselDias(img: "sexta", date: Date() + 86400)
            ItensCarrosselDias(img: "sexta", date: Date() - 86400*3)
        }.previewLayout(.fixed(width: 200, height: 100))
    }
}
