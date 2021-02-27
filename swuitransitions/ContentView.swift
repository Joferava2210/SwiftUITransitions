//
//  ContentView.swift
//  swuitransitions
//
//  Created by Felipe Ramirez Vargas on 27/2/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSquare = false
    
    var body: some View {
        VStack{
            Button ("Tape Me"){
                withAnimation{
                    self.isShowingSquare.toggle()
                }
            }
            if(isShowingSquare){
                Rectangle()
                    .fill(Color.purple)
                    .frame(width: 200, height: 200, alignment: .center)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
