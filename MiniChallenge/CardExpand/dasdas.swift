//
//  dasdas.swift
//  MiniChallenge
//
//  Created by Eros Maurilio on 27/06/21.
//

import SwiftUI

struct dasdas: View {
    @State var ContentArray = ["A","B","C", "D", "E", "F", "G", "I", "J"]
        var body: some View {
            ScrollView(showsIndicators: false) {
            VStack{
                ForEach(Array(ContentArray.enumerated()), id: \.element){ (i, item) in // << 1) !
                    ZStack{
                    // Object
                        Text(item)
                        .frame(width:100,height:100)
                        .background(Color.gray)
                        .cornerRadius(20)
                        .padding()
                    //Delete button
                        Button(action: {
                           withAnimation { () -> () in              // << 2) !!
                               self.ContentArray.remove(at: i)
                           }
                        }){
                        Text("✕")
                        .foregroundColor(.white)
                        .frame(width:40,height:40)
                        .background(Color.red)
                        .cornerRadius(100)
                       }.offset(x:40,y:-40)
                    }.transition(AnyTransition.scale)              // << 3) !!!
               }
             }
           }
       }
}

struct dasdas_Previews: PreviewProvider {
    static var previews: some View {
        dasdas()
    }
}
