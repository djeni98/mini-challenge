//
//  CardHome.swift
//  MiniChallenge
//
//  Created by Maria Luiza Amaral on 28/06/21.
//

import SwiftUI

struct CardHome: View {
    internal init(semanaOrganizada: Bool, img: String, data: Date = Date()) {
        self.semanaOrganizada = semanaOrganizada
        self.img = img
        self.data = data
    }

    var semanaOrganizada : Bool
    var img: String
    var data: Date
    var hoje = Date().toFormatDayMonth()
    
//    let month = Calendar.current.component(.month, from: Date())
//    let year = Calendar.current.component(.year, from: Date())
    let week = Calendar.current.component(.weekOfMonth, from: Date())
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .foregroundColor(Color("LightDarkBg"))
                    

                Image(img)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth: 320, minHeight: 210)
                    .clipped()
                    .padding(.bottom, 110)
                    Spacer()
                
                VStack(alignment: .leading) {
                    Spacer()
                    if semanaOrganizada {
                        Text("\(hoje == day() ? "Hoje" : "(planejada)") • \(day())")
                            .font(.caption)
                            .padding(.bottom, 8)
                            .foregroundColor(.accentColor)
                        
                        weekDay()
                            .font(.title3)
                            .bold()
                        
                        HStack {
                            Text("3 refeições principais + lanches")
                            Spacer()
            
                        }
                        .font(.caption)
                        .foregroundColor(Color(.systemGray))
                        .padding(.bottom)
                    } else {
                        Text("\(month()) \(year()) - Semana \(week)")
                            .font(.caption)
                            .padding(.bottom, 8)
                            .foregroundColor(.accentColor)
                        
                        Text("Planeje sua semana")
                            .font(.title3)
                            .bold()
                        
                        HStack {
                            Text("21 receitas estimadas")
                            Spacer()
            
                        }
                        .font(.caption)
                        .foregroundColor(Color(.systemGray))
                        .padding(.bottom)
                    }
                    
                    
                    
                    
                }
                .padding(.horizontal, 25)
                
                
            }
            .cornerRadius(20)
            //.frame(width: 320, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.2), radius: 20)
        }
    }
    
    func month() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM"
        formatter.locale = Locale(identifier: "pt")
        let monthFormat = formatter.string(from: data).capitalized
        
        return monthFormat
    
    }
    
    func year() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy"
        //formatter.locale = Locale(identifier: "pt")
        let yearFormat = formatter.string(from: data).capitalized
        
        return yearFormat
    
    }
    
    func day() -> String{        
        return data.toFormatDayMonth()
    }
    
    func weekDay() -> Text {
        return Text(data.toFormatWeekday_pt())
    }
    

}
struct CardHome_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardHome(semanaOrganizada: true, img: "tomato", data: Date().addingTimeInterval(86400))
                .frame(width: 300, height: 300, alignment: .center)
                .preferredColorScheme(.light)
            CardHome(semanaOrganizada: false, img: "calendar")
                .frame(width: 300, height: 300, alignment: .center)
                .preferredColorScheme(.dark)
        }.previewLayout(.fixed(width: 400, height: 400))
    }
    
}
