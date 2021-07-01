//
//  Semana.swift
//  MiniChallenge
//
//  Created by Eros Maurilio on 29/06/21.
//

import SwiftUI

struct Semana: View {
    var navegaParaAHome: () -> Void

    @Environment(\.presentationMode) var presentation

    init(navegaParaAHome: @escaping () -> Void) {
        UIView.appearance(whenContainedInInstancesOf: [UIAlertController.self]).tintColor = UIColor(Color("Laranja"))
        self.navegaParaAHome = navegaParaAHome
    }
    
    let diaEmSegundos = 86400
    var tituloView = "Início da semana"
    var tituloAlert = "Redefinir dia de início?"

    @State var primeiraRenderizacao = true
    
    @State private var diaSelecionado = 0
    @State var diaSelecionadoStored: Int = 0
    @State var mostrandoAlerta = false
    @State var mostraCardapioView = false
    var hoje = Date()

    @EnvironmentObject var cardapioSemana: CardapioSemanaModel

    var diaSelecionadoEmData: Date {
        return hoje.addingTimeInterval(TimeInterval(diaSelecionadoStored * diaEmSegundos))
    }
    
    var body: some View {
            VStack(alignment: .leading)  {
                Topo()
                
                Picker("Ínicio", selection: $diaSelecionado) {
                    ForEach(0..<7) { multiplicador in
                        let dia = hoje.addingTimeInterval(TimeInterval(multiplicador * diaEmSegundos))
                        criaText(data: dia)
                            .tag(multiplicador)
                        
                    }
                    .foregroundColor(Color("Laranja"))
                }
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(.systemGray6), lineWidth: 1)
                        .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color(.systemGray6)).opacity(0.3)))
                .padding()
                .padding(.top, 50)
                
                Spacer()
                
                NavigationLink(
                    destination: CardapioSemanaView(dataInicio: diaSelecionadoEmData) {
                        self.presentation.wrappedValue.dismiss()
                        navegaParaAHome()
                    }.environmentObject(cardapioSemana),
                    isActive: $mostraCardapioView,
                    label: {})

            }
            .onAppear {
                diaSelecionadoStored = diaSelecionado
            }
            .navigationBarTitle(tituloView)
            .toolbar(content: {
                if primeiraRenderizacao {
                    Button("Definir") {
                        mostraCardapioView = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            primeiraRenderizacao = false
                        }
                    }
                } else if diaSelecionado == diaSelecionadoStored {
                    Button("Manter") { mostraCardapioView = true }
                    
                } else {
                    Button("Redefinir") { mostrandoAlerta = true }
                }
            })
            .alert(isPresented: $mostrandoAlerta) {
                Alert(
                    title: Text(tituloAlert),
                    message: Text("Você está redefinindo o dia de início do seu planejamento, de \(retornaDia(diaSelecionadoStored)) para \(retornaDia(diaSelecionado))"),
                    primaryButton: .destructive(Text("Redefinir"), action: {
                        mostraCardapioView = true

                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                            diaSelecionadoStored = diaSelecionado
                        }
                    }),
                    secondaryButton: .cancel(Text("Cancelar")))
            }

    }
    
    func dataText(data: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "(dd)"
        
        return formatter.string(from: data)
    }
    
    func weekDayText(data: Date) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "pt")
        formatter.dateFormat = "EEEE"
        
        return formatter.string(from: data).capitalized
    }
    
    func retornaDia(_ distancia: Int) -> String {
        let dia = hoje.addingTimeInterval(TimeInterval(distancia * diaEmSegundos))
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM"

        return formatter.string(from: dia)
    }
    
    
    func criaText(data: Date) -> some View {
        var str = ""
        
        switch data {
        case hoje:
            str = "Hoje"
        case hoje.addingTimeInterval(TimeInterval(diaEmSegundos)):
            str = "Amanhã"
        default:
            str = "\(weekDayText(data: data))"
        }
        
        return Text("\(str) \(dataText(data: data))")
    }
}

struct Topo: View {
    var subtituloView = "A partir de qual dia você quer começar sua rotina semanal?"
    var corpoTexto = " No seu planejamento iremos considerar 7 dias de refeições à partir do dia selecionado. \n \nSelecione abaixo o dia da semana que você deseja iniciar seu planejamento."
    
    var body: some View {
        VStack(alignment: .leading) {
            Group {
                Text(subtituloView)
                    .bold()
                    .padding(.top, 30)
                    .font(.title3)
                
                Text(corpoTexto)
                    .font(.subheadline)
                    .foregroundColor(Color(.systemGray))
            }
            .padding(.vertical, 10)
            .padding(.horizontal)
        }
    }
}

struct Semana_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Semana() {}
                .environmentObject(CardapioSemanaModel())
                .preferredColorScheme(.dark)
        }
    }
}
