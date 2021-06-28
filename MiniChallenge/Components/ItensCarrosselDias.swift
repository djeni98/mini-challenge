//
//  ItensCarrosselDias.swift
//  MiniChallenge
//
//  Created by Maria Luiza Amaral on 25/06/21.
//

import SwiftUI

struct ItensCarrosselDias: View {
    var img: String
    @State var day = Date()
    
    var body: some View {
        let data = Date()
        
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
                    
                    HStack{
                        VStack{
                            
                            Image(systemName: "calendar")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.accentColor)
                                .frame(width: 18, height: 15, alignment: .leading)
                            
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
            }.frame(width: 200, height: 60, alignment: .leading)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color(.systemGray4),radius: 14, x: 0, y: 4)
        }
    }
    
    func dataText() -> some View {
        let data = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM"
        
        return Text(formatter.string(from: data))
    }
    
    func weekDayText() -> some View {
        let data = Date()
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "pt")
        formatter.dateFormat = "EEEE"
        
        return Text(formatter.string(from: data).capitalized)
    }
    
    
    func dataMostrar() -> some View{
        return Text("")
    }
}

struct ItensCarrosselDias_Previews: PreviewProvider {
    static var previews: some View {
        ItensCarrosselDias(img: "imagem-sexta")
    }
}
