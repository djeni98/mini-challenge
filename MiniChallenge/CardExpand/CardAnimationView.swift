//
//  PageAnimation.swift
//  MiniChallenge
//
//  Created by Eros Maurilio on 24/06/21.
//

// MARK: Importante -
// Verificar navigation, pois hidden apenas tira visualmente, impedindo que coisas no top sejam clicadas
// swipe gesture


import SwiftUI
import Introspect

struct CardAnimationView: View {

    //MARK: Vars -
    var receitas: [Receita]
    var diaDaSemana = "Quinta-Feira"
    var sliderButton = "slider.horizontal.3"
    var randomDoubleAnimation = Double.random(in: 2.3...2.5)
    var cafeDaManha: Receita = listaDeReceitas[0]
    var almoco: Receita = listaDeReceitas[1]
    var janta: Receita = listaDeReceitas[3]
    var refeicoes: [Refeicoes] { [Refeicoes(.cafeDaManha, nil), Refeicoes(.almoco, almoco), Refeicoes(.jantar, janta)] }
    
    
    // MARK: State Vars -
    @State var elipseAnimada = true
    @State var scale: CGFloat = 1
    //@State var estaChacoalhando = false
    @State var estaRemovendo = false
    @State var estaExpandido = false
    @State var estaAnimando = false
    @State var receitaSelecionado: Receita? = nil
    @State var estaOpaco = false
    @State var mostraNavigationBar = true
    @Namespace var namespace
    
    
    // MARK: Refeicoes type-
    struct Refeicoes: Identifiable {
        var tipoRefeicao: TipoDeRefeicao
        var receita: Receita?
        var id: Int
        
        init(_ tipoRefeicao: TipoDeRefeicao, _ receita: Receita?) {
            self.tipoRefeicao = tipoRefeicao
            self.receita = receita
            self.id = tipoRefeicao.rawValue
        }
    }

    var botaoEditar: some View {
        Button(action: {
            withAnimation(.spring()) {
                if estaAnimando { return }
                estaAnimando = true
                estaRemovendo.toggle()
                //estaChacoalhando.toggle()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { elipseAnimada.toggle() }

                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { estaOpaco.toggle() }

                DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) { estaAnimando = false }
            }
        }) {
            Image(systemName: sliderButton)
                .font(.title2)

        }
    }

    var header: some View {
        HStack() {
            Text(diaDaSemana)
                .font(.largeTitle)
                .bold()

            Spacer()

            botaoEditar
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 40)
    }
    
    var body: some View {
        ZStack {
            
            //MARK: CardView -
            if !estaExpandido {
                ScrollView {
                    VStack(spacing: 20) {
                        ForEach(refeicoes) { refeicao in                            
                            if let receita = refeicao.receita {
                                if receita.id != receitaSelecionado?.id {
                                    ZStack {
                                        CardPrincipal(receita: receita)
                                            .matchedGeometryEffect(id: receita.id, in: namespace)
                                            .frame(width: 350, height: 300)
                                            .shadow(radius: 10)
                                        
                                        if estaRemovendo {
                                            RemoveButton() { }
                                                .cornerRadius(elipseAnimada ? 200 : 0)
                                                .scaleEffect(elipseAnimada ? 0 : 1)
                                                .opacity(estaOpaco ? 1 : 0)
                                                .animation(.spring(response: 1, dampingFraction: 1, blendDuration: 0.4))
                                                .zIndex(1.5)
                                        }
                                    }
                                    .contentShape(Rectangle())
                                    .onTapGesture {
                                        if estaRemovendo { return }
                                        
                                        withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.8)) {
                                            receitaSelecionado = receita
                                            estaAnimando = true
                                            estaExpandido.toggle()
                                            mostraNavigationBar = false
                                            
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                                estaAnimando = false }
                                        }
                                    }
                                    .matchedGeometryEffect(id: "Container\(receita.id)", in: namespace)
                                    //                                .rotationEffect(.degrees((estaChacoalhando ? randomDoubleAnimation : 0)))
                                    //                                .animation(estaChacoalhando ?
                                    //                                            Animation.easeOut(duration: 0.15).repeatForever(autoreverses: true) :
                                    //                                            Animation.default)
                                    
                                } else {
                                    Color.clear.frame(width: 350, height: 300)
                                }
                            } else {
                                DottedOutlineButton(label: "Adicionar \(refeicao.tipoRefeicao.toString())") {
                                    //Ação
                                }
                            }
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                    .zIndex(1)
                    
                    DottedOutlineButton(label: "Adicionar Lanche") {
                        //Action
                    }
                    .frame(width: 350)
                    .padding(.vertical, 30)
                }
            }
            
            //MARK: CardDetalhado -
            if let receitaSelecionado = receitaSelecionado {
                if estaExpandido {
                    CardDetalhadoView(receita: receitaSelecionado)
                    //                        .gesture(DragGesture(minimumDistance: 0).onChanged(onChanged(value:)).onEnded(onEnded(value:)))
                    
                    ZStack {
                        VStack {
                            Button(action: {withAnimation(.spring()) {
                                self.receitaSelecionado = nil
                                estaAnimando = true
                                estaExpandido.toggle()
                                
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) { estaAnimando = false }
                                
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { mostraNavigationBar.toggle() }

                            }
                            }) {
                                Image(systemName: "xmark.circle.fill")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .padding(.leading, 300)
                                    .foregroundColor(Color(.systemGray))
                            }
                            .padding(.top, 30)
                            .disabled(estaAnimando)
                            Spacer()
                        }
                    }
                    .edgesIgnoringSafeArea(.all)
                    .zIndex(3)
                }
            }
        }
        .navigationTitle(diaDaSemana)
        .navigationBarTitleDisplayMode(.large)
        .navigationBarItems(trailing: botaoEditar)
        .navigationBarHidden(!mostraNavigationBar)
//        .introspectTabBarController { (UITabBarController) in
//                UITabBarController.tabBar.isHidden = estaExpandido
//            }
    }
    
    //MARK: Funcs -
    //    func onChanged(value: DragGesture.Value) {
    //        let scale = value.translation.height / UIScreen.main.bounds.height
    //
    //        if 1 - scale >  0.7 {
    //            self.scale = 1 - scale
    //        }
    //    }
    //
    //    func onEnded(value: DragGesture.Value) {
    //        withAnimation(.spring()) {
    //            if scale < 0.9 {
    //                self.receitaSelecionado = nil
    //                estaAnimando = true
    //                estaExpandido.toggle()
    //            }
    //            scale = 1
    //        }
    //    }
    //
    //}
}


struct PageAnimation_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CardAnimationView(receitas: listaDeReceitas)
        }
    }
}

