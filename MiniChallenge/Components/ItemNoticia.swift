//
//  ItemNoticia.swift
//  MiniChallenge
//
//  Created by Maria Luiza Amaral on 29/06/21.
//

import SwiftUI

struct ItemNoticia: View {
    var noticia: Noticia
    
    let today = Calendar.current.component(.day, from: Date())
    let yesterday = Calendar.current.component(.day, from: Date().addingTimeInterval(-86400))
    let twoDaysBefore = Calendar.current.component(.day, from: Date().addingTimeInterval(-86400*2))
    let threeDaysBefore = Calendar.current.component(.day, from: Date().addingTimeInterval(-86400*3))
    
    var body: some View {
        VStack(alignment: .leading){
            VStack(alignment: .leading){
                Text(noticia.link.components(separatedBy: "-")[0])
                    .font(.caption2)
                    .foregroundColor(.accentColor)
                    .padding(.top, 2)
                Text(noticia.titulo)
                    .font(.body)
                    .fontWeight(.semibold)
                    .padding(.vertical, 1)
                Text(noticia.texto)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .padding(.bottom,15)
                    .lineLimit(1)
                switch Calendar.current.component(.day, from: noticia.data) {
                case today:
                    Text("Hoje")
                        .font(.caption2)
                        .foregroundColor(Color(.systemGray3))
                case yesterday:
                    Text("Há 1 dia")
                        .font(.caption2)
                        .foregroundColor(Color(.systemGray3))
                case twoDaysBefore:
                    Text("Há 2 dias")
                        .font(.caption2)
                            .foregroundColor(Color(.systemGray3))
                case threeDaysBefore:
                    Text("Há 3 dias")
                        .font(.caption2)
                        .foregroundColor(Color(.systemGray3))
                default:
                    data(data: noticia.data)
                        .font(.caption2)
                        .foregroundColor(Color(.systemGray3))
                }
                
            }
        }
    }
    
}


func data(data: Date) -> some View {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yyyy"
    
    return Text(formatter.string(from: data))
    
}

struct ItemNoticia_Previews: PreviewProvider {
    static var previews: some View {
        ItemNoticia(noticia : Noticia(link:"https://exame.com/bussola/quer-se-concentrar-no-home-office-veja-o-que-colocar-no-prato/", titulo: "Quer se concentrar no home office? Veja o que colocar no prato", texto: "Nutricionista mostra que, com a alimentação correta, é possível reduzir o hormônio do estresse e aumentar a concentração",tipo: .nutriocional, data: stringToDate("10/12/2020") ?? Date()))
            .preferredColorScheme(.dark)
            .padding()
    }
}
