//
//  Transicao.swift
//  MiniChallenge
//
//  Created by Eros Maurilio on 25/06/21.
//

import SwiftUI

extension AnyTransition {
    
    static let hero = AnyTransition.modifier(
        active: HeroModifier(porcentagem: 1),
        identity: HeroModifier(porcentagem: 0))
    
    struct HeroModifier: AnimatableModifier {
        var porcentagem: Double
        
        var  animatableData: Double {
            get {
                porcentagem
            }
            
            set {
                porcentagem = newValue
            }
        }
        
        func body(content: Content) -> some View {
            content
                .opacity(1)
        }
    }
}
