////
////  ConditionalModifier.swift
////  MiniChallenge
////
////  Created by Eros Maurilio on 30/06/21.
////
//
//import Foundation
//
//extension View {
//    
//    // If condition is met, apply modifier, otherwise, leave the view untouched
//    public func conditionalModifier<T>(_ condition: Bool, _ modifier: T) -> some View where T: ViewModifier {
//        Group {
//            if condition {
//                self.modifier(modifier)
//            } else {
//                self
//            }
//        }
//    }
//}
