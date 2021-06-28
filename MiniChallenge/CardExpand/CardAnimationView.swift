//
//  PageAnimation.swift
//  MiniChallenge
//
//  Created by Eros Maurilio on 24/06/21.
//

// MARK: Bugs -
// Como separar as animações para que ocorram de forma adequada (remoção)
// Alert para de funcionar se o wiggle estiver ativado
// CustomAlert
// Scroll Volta pro topo independente da posição menos quando usa swipe google ou navigation

//MARK: Todo -
// Refatorar o código;
// Separar em views
//



import SwiftUI

struct CardAnimationView: View {
    //MARK: Vars -
    var receitas: [Receita]
    var receita: Receita
    var diaDaSemana = "Quinta-Feira"
    var randomDoubleAnimation = Double.random(in: 2.3...2.5)
    
    @State var scale: CGFloat = 1
    @State var estaChacoalhando = false
    @State var estaRemovendo = false
    @State var estaExpandido = false
    @State var estaAnimando = false
    @State var receitaSelecionado: Receita? = nil
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            
            //MARK: CardView -
            if !estaExpandido {
                ScrollView {
                    HStack() {
                        Text(diaDaSemana)
                            .font(.largeTitle)
                            .bold()
                        
                        Spacer()
                        
                        Button(action: {
                            withAnimation(.spring()) {
                                if estaAnimando { return }
                                estaAnimando = true
                                estaRemovendo.toggle()
//                                estaChacoalhando.toggle()
                    
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) { estaAnimando = false }
                            }
                        }) {
                            Image(systemName: "slider.horizontal.3")
                                .font(.title)
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 40)
                    
                    VStack(spacing: 20) {
                        ForEach(receitas) { receita in
                            if receita.id != receitaSelecionado?.id {
                                ZStack {
                                    CardPrincipal(receita: receita)
                                        .matchedGeometryEffect(id: receita.id, in: namespace)
                                        .frame(width: 350, height: 300)
                                        .shadow(radius: 10)
                                    
                                    if estaRemovendo {
                                        RemoveButton()
                                            .transition(.scale)
                                            .zIndex(1.5)
                                    }
                                }
                                
                                .contentShape(Rectangle())
                                .onTapGesture {
                                    if estaRemovendo { return }
                                    withAnimation(.interactiveSpring(response: 0.5,
                                                                     dampingFraction: 0.8,
                                                                     blendDuration: 0.8)) {
                                        receitaSelecionado = receita
                                        estaAnimando = true
                                        estaExpandido.toggle()
                                        
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { estaAnimando = false }
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
                        }
                    }
                    .padding(.horizontal, 20)
                    .zIndex(1)
                }
            }
                
            //MARK: CardDetalhado -
            if let receitaSelecionado = receitaSelecionado {
                if estaExpandido {
                    CardDetalhadoView(receita: receitaSelecionado, namespace: namespace)
                        .gesture(DragGesture(minimumDistance: 0).onChanged(onChanged(value:)).onEnded(onEnded(value:)))
                    
                    ZStack {
                        VStack {
                            Button(action: {withAnimation(.spring()) {
                                self.receitaSelecionado = nil
                                estaAnimando = true
                                estaExpandido.toggle()
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
    }
    
    //MARK: Funcs -
    func onChanged(value: DragGesture.Value) {
        let scale = value.translation.height / UIScreen.main.bounds.height
        
        if 1 - scale >  0.7 {
            self.scale = 1 - scale
        }
    }
    
    func onEnded(value: DragGesture.Value) {
        withAnimation(.spring()) {
            if scale < 0.9 {
                self.receitaSelecionado = nil
                estaAnimando = true
                estaExpandido.toggle()
            }
            scale = 1
        }
    }
    
}


struct PageAnimation_Previews: PreviewProvider {
    static var previews: some View {
        CardAnimationView(receitas: listaDeReceitas, receita: listaDeReceitas[0])
    }
}
