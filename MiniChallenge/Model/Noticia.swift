//
//  Noticia.swift
//  MiniChallenge
//
//  Created by Maria Luiza Amaral on 29/06/21.
//

import Foundation

struct Noticia: Identifiable{
    var id = UUID()
    var link: String
    var titulo: String
    var texto: String
    var tipo: TipoDeNoticia
    var data: Date
    
}

enum TipoDeNoticia {
    case nutriocional, sustentavel
}

func stringToDate(_ string: String) -> Date? {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd/MM/yyy"
    return dateFormatter.date(from: string)
}

var listaDeNoticias = [       Noticia(link:"https://exame.com/bussola/quer-se-concentrar-no-home-office-veja-o-que-colocar-no-prato/", titulo: "Quer se concentrar no home office? Veja o que colocar no prato", texto: "Nutricionista mostra que, com a alimentação correta, é possível reduzir o hormônio do estresse e aumentar a concentração",tipo: .nutriocional, data: stringToDate("10/12/2020") ?? Date()),
                       
    Noticia(link:"https://exame.com/bussola/quer-se-concentrar-no-home-office-veja-o-que-colocar-no-prato/", titulo: "Quer se concentrar no home office? Veja o que colocar no prato", texto: "Nutricionista mostra que, com a alimentação correta, é possível reduzir o hormônio do estresse e aumentar a concentração",  tipo: .nutriocional, data: stringToDate("26/06/2021") ?? Date()),

    Noticia(link:"https://www1.folha.uol.com.br/seminariosfolha/2021/05/combate-ao-desperdicio-de-alimento-e-chave-para-avanco-da-sustentabilidade.shtml", titulo: "Combate ao desperdício de alimento é chave para avanço da sustentabilidade", texto: "Saída para perda de alimentos exige ações de produtores, governos e consumidores",  tipo: .sustentavel, data: Date()),
    
    Noticia(link:"https://www1.folha.uol.com.br/seminariosfolha/2021/05/combate-ao-desperdicio-de-alimento-e-chave-para-avanco-da-sustentabilidade.shtml", titulo: "Combate ao desperdício de alimento é chave para avanço da sustentabilidade", texto: "Saída para perda de alimentos exige ações de produtores, governos e consumidores",  tipo: .sustentavel, data: stringToDate("28/06/2021") ?? Date())
]
    
